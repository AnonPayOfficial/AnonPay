#!/bin/bash
# use testnet settings,  if you need mainnet,  use ~/.anonpaycore/anonpayd.pid file instead
anonpay_pid=$(<~/.anonpaycore/testnet3/anonpayd.pid)
sudo gdb -batch -ex "source debug.gdb" anonpayd ${anonpay_pid}
