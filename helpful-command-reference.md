# Stellar CLI
Stellar CLI Manual: https://developers.stellar.org/docs/tools/cli/stellar-cli

Create and fund account:
```
stellar keys generate --global alice --network testnet --fund
```

Display public key:
```
stellar keys address alice
```

---
# Github Codespaces
Github CLI:  https://cli.github.com/manual/

```text
gh codespace view --codespace ${CODESPACE_NAME} 
```

Restart devcontainer:
```text
gh codespace rebuild --codespace ${CODESPACE_NAME}
```