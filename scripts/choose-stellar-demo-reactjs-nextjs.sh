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
cp "${CODESPACE_VSCODE_FOLDER}"/smart-stellar-demo-reactjs-nextjs/.env.example "${CODESPACE_VSCODE_FOLDER}/.env" 
cp -R "${CODESPACE_VSCODE_FOLDER}"/smart-stellar-demo-reactjs-nextjs/* "${CODESPACE_VSCODE_FOLDER}"
rm -rf smart-stellar-demo-reactjs-nextjs
rm -rf scripts
rm choose-front-end-framework.md
fi

echo "Now open the README and follow the steps"
echo "Start client"
echo "pnpm install"
echo "pnpm dev"
echo ""
echo "Make ports public"
echo "gh codespace ports visibility --codespace ${CODESPACE_NAME} 80:public 5173:public 3000:public 8080:public"
                                                                                                                                                                       
                                                                            
