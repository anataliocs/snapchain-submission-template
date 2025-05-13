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
[ -f snapchain-vanillajs ] && mv snapchain-vanillajs .
fi



