// import { getContractId } from "./storage";
import { truncate, createChatLedgerKeys } from "./utils";
import { account, server } from "./passkeys";
import { Client as SnapchainClient, networks, type ChatMessage } from "snapchain_sdk";
import { Server } from "@stellar/stellar-sdk/rpc";
import { Contract, scValToNative } from "@stellar/stellar-sdk";

const snapchain = new SnapchainClient({
    rpcUrl: import.meta.env.VITE_RPC_URL,
    contractId: networks.testnet.contractId,
    networkPassphrase: import.meta.env.VITE_NETWORK_PASSPHRASE,
});

const rpc = new Server(import.meta.env.VITE_RPC_URL);

export class ChatLog {
    element: HTMLDivElement;
    nextIndex: number | undefined;
    messages: Record<number, ChatMessage> = {};

    constructor(element: HTMLDivElement) {
        this.element = element
        this.refreshChatHistory()
    }

    renderMessages() {
        let placeholder = ''
        Object.entries(this.messages)
            .forEach(([_, chatMessage]) => {
                placeholder += renderMessage(chatMessage)
            })
        this.element.innerHTML = placeholder
    }

    async sendMessage(message: string, author: string, keyId: string) {
        if (!account.wallet?.options) {
            account.connectWallet({ keyId, })
        }
        let at = await snapchain.send({
            author,
            message,
        })

        let tx = await account.sign(at.built!, { keyId })
        await server.send(tx)

        this.refreshChatHistory()
    }

    async getNextIndex() {
        const snapchainContract = new Contract(networks.testnet.contractId)
        const { entries } = await rpc.getLedgerEntries(snapchainContract.getFootprint())
        this.nextIndex = scValToNative(entries[0].val.contractData().val().instance().storage()![0].val())
    }

    async fetchMessages() {
        if (this.nextIndex) {
            let possibleChats = createChatLedgerKeys(this.nextIndex);
            let { entries } = await rpc.getLedgerEntries(...possibleChats)

            this.messages = {}
            entries.forEach((e) => {
                const chatIndex = scValToNative(e.key.contractData().key())[1]
                const chatMessage: ChatMessage = scValToNative(e.val.contractData().val())
                this.messages[chatIndex] = chatMessage
            })
        }
    }

    async refreshChatHistory() {
        await this.getNextIndex()
        await this.fetchMessages()
        this.renderMessages()
    }
}

function renderMessage({author, message, timestamp}: ChatMessage): string {
    return `
        <article>
            <header><nav>
                <small>${truncate(author)}</small>
                <small>${new Date(Number(timestamp) * 1_000).toLocaleString()}</small>
            </nav></header>
            <p>${message}</p>
        </article>
    `
}
