import { xdr, Address, nativeToScVal, Contract, scValToNative } from '@stellar/stellar-sdk'
import { Server } from '@stellar/stellar-sdk/rpc';
import { networks } from 'snapchain_sdk'

export const rpc = new Server(import.meta.env.VITE_RPC_URL);

export async function getNextIndex(): Promise<number> {
    const snapchainContract = new Contract(networks.testnet.contractId)
    const { entries } = await rpc.getLedgerEntries(snapchainContract.getFootprint())
    const nextIndex = entries[0].val
        .contractData()
        .val()
        .instance()
        .storage()
        ?.find((e) => scValToNative(e.key()) === 'INDEX');
    return nextIndex ? scValToNative(nextIndex.val()) : 0;
}

export function createChatLedgerKeys(latestIndex: number): xdr.LedgerKey[] {
    return Array.from({ length: latestIndex}, (_, i) => latestIndex - i).map((c) =>
        xdr.LedgerKey.contractData(
            new xdr.LedgerKeyContractData({
                contract: new Address(networks.testnet.contractId).toScAddress(),
                key: nativeToScVal([
                    nativeToScVal('Chat', { type: 'symbol' }),
                    nativeToScVal(c, { type: 'u32' }),
                ]),
                durability: xdr.ContractDataDurability.temporary(),
            })
        )
    );
}
