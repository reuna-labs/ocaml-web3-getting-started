# OCaml Web3 getting started

A clean external consumer of the public Reuna Labs OCaml Web3 alpha packages.
It deliberately builds outside every source repository, which verifies that
the installed package interfaces and dependency metadata are sufficient.

These packages are unaudited alphas. Use low-value testnet accounts only; do
not use them to control assets of value.

## Install

Install OCaml, opam, and Dune, then add the public overlay once:

```sh
opam repository add reuna https://github.com/reuna-labs/opam-repository.git
opam update
opam install dune solana cosmos tron
```

Build and run this consumer:

```sh
dune build
dune exec ./main.exe
```

The program reads the committed Cosmos Hub profile through the installed
`cosmos` interface. Its Dune stanza also links the Solana and Tron umbrella
libraries, catching missing installed modules or dependency declarations.

## Choose narrower packages in applications

The umbrella packages are convenient for exploration. Production code should
usually install the smallest boundary it needs:

| Need | Example package |
| --- | --- |
| Pure Cosmos construction and signing | `cosmos` |
| Hosted Cosmos JSON-RPC and gRPC | `cosmos-rpc-unix` |
| Pure Solana transaction support | `solana` |
| Hosted Solana RPC | `solana-rpc-unix` |
| Pure Tron transaction support | `tron` |
| Hosted Tron RPC | `tron-rpc-unix` |
| Shared encodings | `web3-codec` |

The complete checksum-locked alpha train, including Bitcoin, EVM, TON,
Cardano, MPC, CometBFT, gRPC, and crypto dependencies, is documented in the
[public overlay](https://github.com/reuna-labs/opam-repository).

Security reports belong at `security@reuna.io`, not in a public issue.
