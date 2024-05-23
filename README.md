# Finiteroba
An SMT solver for finite algebraic data types, arrays, bitvectors, and booleans.

## Install Dependencies
First [install `opam` and `dune`](https://ocaml.org/docs/up-and-running). This was tested using dune version 3.10.0, opam version 2.1.5, and OCaml version 5.0.0. Then do
```sh
opam install -y --deps-only .
```

## Install
```sh
dune build
dune install
```


## Usage
```
finiteroba <query> [options]
  -o Write to an output file
  -t Set a timeout for solving (in milliseconds)
  --measure Measure time spent in each step
  -help  Display this list of options
  --help  Display this list of options
```

Currently we only support printing out queries using -o, finiteroba cannot directly solve the queries
