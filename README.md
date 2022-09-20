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