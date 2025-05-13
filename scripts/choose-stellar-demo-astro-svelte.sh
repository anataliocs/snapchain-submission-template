#!/bin/bash
set -e

clear

echo "Stellar Demo Astro Svelte Chosen!"

if [ -d smart-stellar-demo-reactjs-nextjs ] ; then
 rm -rf smart-stellar-demo-reactjs-nextjs
fi

if [ -d snapchain-vanillajs  ] ; then
 rm -rf snapchain-vanillajs
fi

if [ -d smart-stellar-demo-astro-svelte ] ; then
cp -R "${CODESPACE_VSCODE_FOLDER}"/smart-stellar-demo-astro-svelte/* "${CODESPACE_VSCODE_FOLDER}"
rm -rf smart-stellar-demo-astro-svelte
rm -rf scripts
rm choose-front-end-framework.md
fi

echo "Now open the README and follow the steps"



