# FORK token sale

[![Build Status](https://travis-ci.org/GastroAdvisor/fork-token-sale.svg?branch=master)](https://travis-ci.org/GastroAdvisor/fork-token-sale) 
[![Coverage Status](https://coveralls.io/repos/github/GastroAdvisor/fork-token-sale/badge.svg)](https://coveralls.io/github/GastroAdvisor/fork-token-sale)
[![MIT licensed](https://img.shields.io/github/license/GastroAdvisor/fork-token-sale.svg)](https://github.com/GastroAdvisor/fork-token-sale/blob/master/LICENSE)


Smart contract for FORK token sale


## Development

Install Truffle if you want to run your own node

Version 4.1.15 required

```bash
npm install -g truffle@4.1.15
```

### Install dependencies

```bash
npm install
```

## Usage
 
### Compile

```bash
npm run compile
```

### Test 

```bash
npm run test 
```

### Code Coverage

```bash
npm run coverage
```

## Linter

Use Solhint

```bash
npm run lint:sol
```

Use ESLint

```bash
npm run lint:js
```

Use ESLint and fix

```bash
npm run lint:fix
```

## Flattener

This allow to flatten the code into a single file

Edit `scripts/flat.sh` to add your contracts

```bash
npm run flat
```

## Analysis

Note: it is better to analyze the flattened code to have a bigger overview on the entire codebase. So run the flattener first.

### Describe

The `describe` command shows a summary of the contracts and methods in the files provided

```bash
surya describe dist/ForkTokenSale.dist.sol
```

### Dependencies

The `dependencies` command outputs the c3-linearization of a given contract's inheirtance graph. Contracts will be listed starting with most-derived, ie. if the same function is defined in more than one contract, the solidity compiler will use the definition in whichever contract is listed first.

```bash
surya dependencies ForkTokenSale dist/ForkTokenSale.dist.sol
```
### Generate Report

Edit `scripts/analyze.sh` to add your contracts 

```bash
npm run analyze
```

The `inheritance` command outputs a DOT-formatted graph of the inheritance tree.

The `graph` command outputs a DOT-formatted graph of the control flow.

The `mdreport` command creates a markdown description report with tables comprising information about the system's files, contracts and their functions.

## License

Code released under the [MIT License](https://github.com/GastroAdvisor/fork-token-sale/blob/master/LICENSE).
