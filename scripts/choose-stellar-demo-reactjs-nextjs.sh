#!/bin/bash
set -e

clear

echo "Stellar Demo ReactJS NextJS Chosen!"

if [ -d smart-stellar-demo-astro-svelte ] ; then
 rm -rf smart-stellar-demo-astro-svelte
fi

if [ -d snapchain-vanillajs ] ; then
 rm -rf snapchain-vanillajs
fi

if [ -d smart-stellar-demo-reactjs-nextjs ] ; then
cp -R "${CODESPACE_VSCODE_FOLDER}"/smart-stellar-demo-reactjs-nextjs/* "${CODESPACE_VSCODE_FOLDER}"
rm -rf smart-stellar-demo-reactjs-nextjs
rm -rf scripts
rm choose-front-end-framework.md
fi



