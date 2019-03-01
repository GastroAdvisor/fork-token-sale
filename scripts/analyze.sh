#!/usr/bin/env bash

surya inheritance dist/ForkTokenSale.dist.sol | dot -Tpng > analysis/inheritance-tree/ForkTokenSale.png

surya graph dist/ForkTokenSale.dist.sol | dot -Tpng > analysis/control-flow/ForkTokenSale.png

surya mdreport analysis/description-table/ForkTokenSale.md dist/ForkTokenSale.dist.sol
