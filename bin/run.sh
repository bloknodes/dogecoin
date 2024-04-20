#!/usr/bin/env bash

NETWORK=${NETWORK:-testnet}

function run_mainnet(){
  echo "[INFO] Running dogecoin in MAINNET chain"
  /usr/bin/dogecoind -conf=/etc/litecoin/mainnet.conf -daemon=0
}

function run_testnet(){
  echo "[INFO] Running dogecoin in TESTNET chain"
  /usr/bin/dogecoind -conf=/etc/litecoin/testnet.conf -daemon=0
}

if [ "${NETWORK}" == "mainnet" ]
then
  run_mainnet
else
  run_testnet
fi
