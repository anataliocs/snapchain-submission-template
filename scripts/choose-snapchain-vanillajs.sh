#!/bin/bash
set -e

clear

echo "Snapchain Vanilla JS chosen!"

if [ -d smart-stellar-demo-reactjs-nextjs ] ; then
 rm -rf smart-stellar-demo-reactjs-nextjs
fi

if [ -d smart-stellar-demo-astro-svelte ] ; then
 rm -rf smart-stellar-demo-astro-svelte
fi

if [ -d snapchain-vanillajs ] ; then
cp -R "${CODESPACE_VSCODE_FOLDER}"/snapchain-vanillajs/* "${CODESPACE_VSCODE_FOLDER}"
rm -rf snapchain-vanillajs
rm -rf scripts
rm choose-front-end-framework.md
fi

echo "Now open the README and follow the steps"



