# TidierIteration.jl

[![Build Status](https://github.com/vituri/TidierIteration.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/vituri/TidierIteration.jl/actions/workflows/CI.yml?query=branch%3Amain)

## What is TidierIteration.jl?

TidierIteration.jl is a 100% Julia implementation of the `purrr` R package. It aims to ease
the different ways to `map` Julia objects: arrays, dicts and so on. It also provides
some tools of functional programming: adverbs, composition, safe-functions and more.

## Installation

For the stable version:

```
] add https://github.com/TidierOrg/TidierIteration
```

The `]` character starts the Julia [package manager](https://docs.julialang.org/en/v1/stdlib/Pkg/). Press the backspace key to return to the Julia prompt.

or


```julia
using Pkg
Pkg.add(url="https://github.com/TidierOrg/TidierIteration")
```

## Examples
