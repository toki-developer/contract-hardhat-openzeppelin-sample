# contract-hardhat-openzeppelin-sample

## コンパイル
```
npx hardhat compile
```

## Nodeの起動
```
npx hardhat node
```

## スクリプトの実行
```
npx hardhat run --network localhost [script filename]
```

## スクリプトの実行(Upgradeableなコントラクトのデプロイ)
```
npx hardhat run --network localhost scripts/deploy_upgradeable_box.js
```

## スクリプトの実行(Upgradeableなコントラクのアップグレード)
```
npx hardhat run --network localhost scripts/upgrade_upgradeable_box.js
```

## コンソール
### 起動
```
npx hardhat console --network localhost
```

### デプロイ済みのコントラクトに接続

```
const Contract = await ethers.getContractFactory("Box");

const contract = await Contract.attach([コントラクトのアドレス])

// contract.関数で、コントラクトの関数を実行できる
```