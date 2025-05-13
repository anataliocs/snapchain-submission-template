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
[ -f smart-stellar-demo-astro-svelte ] && mv smart-stellar-demo-astro-svelte .
fi



