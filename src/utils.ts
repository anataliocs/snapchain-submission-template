import { xdr, Address, nativeToScVal } from '@stellar/stellar-sdk'
import { networks } from 'snapchain_sdk'

export function setIsLoading(element: HTMLButtonElement, isLoading: boolean) {
    element.ariaBusy = `${isLoading}`
    element.disabled = isLoading
}

export function truncate(text: string, start: number = 4, end: number = 4): string {
    return `${text.slice(0, start)}...${text.slice(text.length - end)}`
}

export async function copyToClipboard(text: string) {
    await navigator.clipboard.writeText(text)
    alert('copied text to clipboard')
}

export function createChatLedgerKeys(index: number): xdr.LedgerKey[] {
    return Array.from({ length: index}, (_, i) => index - i).map((c) =>
        xdr.LedgerKey.contractData(
            new xdr.LedgerKeyContractData({
                contract: new Address(networks.testnet.contractId).toScAddress(),
                key: nativeToScVal([
                    nativeToScVal('Chat', { type: 'symbol' }),
                    nativeToScVal(c - 1, { type: 'u32' }),
                ]),
                durability: xdr.ContractDataDurability.temporary(),
            })
        )
    );
}
