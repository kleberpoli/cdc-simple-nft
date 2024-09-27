# NFT Simples

## Descrição
Este projeto implementa um **contrato de NFT (Non-Fungible Token)** simples usando Cadence. O contrato permite cunhar novos NFTs e transferi-los entre usuários. Esse projeto é uma excelente base para criar colecionáveis digitais e ativos exclusivos em uma blockchain.

## Funcionalidades
- Cunhagem de novos NFTs com metadados personalizados.
- Transferência de NFTs entre contas.
- Verificação de NFTs de propriedade de um usuário.

## Estrutura do Código
- **`NFT`**: Estrutura que define um NFT com um `id` exclusivo e `metadata`.
- **`totalSupply`**: Número total de NFTs cunhados.
- **`ownedNFTs`**: Mapeamento de NFTs possuídos por cada endereço.
- **`mintNFT(owner: Address, metadata: String)`**: Cunha um novo NFT e o atribui a um usuário.
- **`transferNFT(nftID: UInt64, from: Address, to: Address)`**: Transfere um NFT de um endereço para outro.

## Como Executar
1. Implemente o contrato em uma rede Flow Blockchain.
2. Use ferramentas como Flow CLI ou playground para cunhar novos NFTs e transferi-los entre contas.

## Requisitos
- Cadence e Flow CLI instalados.
- Conta na Flow Blockchain.

## Melhorias Futuras
- Adicionar mais metadados e atributos personalizados aos NFTs.
- Suporte para royalties em vendas secundárias.
- Interface gráfica para visualização e transferência de NFTs.

## Licença
MIT License