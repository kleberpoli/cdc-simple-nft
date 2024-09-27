access(all) contract SimpleNFT {

    access(all) struct NFT {
        access(all) let id: UInt64
        access(all) let metadata: String

        init(id: UInt64, metadata: String) {
            self.id = id
            self.metadata = metadata
        }
    }

    access(all) var totalSupply: UInt64
    access(all) var ownedNFTs: @{Address: [NFT]}

    init() {
        self.totalSupply = 0
        self.ownedNFTs = {}
    }

    access(all) fun mintNFT(owner: Address, metadata: String): NFT {
        let newNFT = NFT(id: self.totalSupply, metadata: metadata)
        self.totalSupply = self.totalSupply + 1

        if self.ownedNFTs[owner] == nil {
            self.ownedNFTs[owner] = []
        }

        self.ownedNFTs[owner]!.append(newNFT)
        return newNFT
    }

    access(all) fun transferNFT(nftID: UInt64, from: Address, to: Address) {
        let nftList = self.ownedNFTs[from] ?? panic("No NFTs owned by this address!")
        let nftIndex = nftList.firstIndex(where: { $0.id == nftID }) ?? panic("NFT not found!")

        let nftToTransfer = nftList.remove(at: nftIndex)
        self.ownedNFTs[from] = nftList

        if self.ownedNFTs[to] == nil {
            self.ownedNFTs[to] = []
        }

        self.ownedNFTs[to]!.append(nftToTransfer)
    }
}