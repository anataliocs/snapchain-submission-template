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
[ -f smart-stellar-demo-reactjs-nextjs ] && mv smart-stellar-demo-reactjs-nextjs .
fi



