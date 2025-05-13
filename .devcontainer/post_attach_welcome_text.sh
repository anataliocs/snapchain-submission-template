#!/bin/bash
set -e

clear

echo "  ⚙️ Setup testnet:"
echo "     stellar network use testnet"
echo ""
echo "  🆔 Configure an Identity:"
echo "     stellar keys generate --global alice --network testnet --fund"
echo "     stellar keys address alice"
echo "     stellar keys use alice"
echo ""
echo "  🛠️ Build a contract(Replace 'alloc' with desired project):"
echo "     stellar contract build --manifest-path $CODESPACE_VSCODE_FOLDER/contracts/snapchain/Cargo.toml"
echo ""
echo "  🧪 Run tests"
echo "     cargo test"
echo ""
echo "  📖 Stellar CLI Manual(cmd+click) 🔗 https://developers.stellar.org/docs/tools/cli/stellar-cli"
echo "  👩‍🔬 Stellar Lab(cmd+click) 🔗 https://lab.stellar.org/"
echo ""
echo "  Welcome to the Consensus 2025: Stellar Toronto Builder Summit EasyA Hackathon!!!"
echo "  Open choose-front-end-framework.md to choose a front-end framework"


