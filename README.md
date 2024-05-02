# TidierIteration.jl
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](https://github.com/TidierOrg/TidierIteration.jl/blob/main/LICENSE)
[![Docs: Latest](https://img.shields.io/badge/Docs-Latest-blue.svg)](https://tidierorg.github.io/TidierIteration.jl/)
[![Downloads](https://img.shields.io/badge/dynamic/json?url=http%3A%2F%2Fjuliapkgstats.com%2Fapi%2Fv1%2Fmonthly_downloads%2FTidierIteration&query=total_requests&suffix=%2Fmonth&label=Downloads)](http://juliapkgstats.com/pkg/TidierIteration)

<img src="/assets/logo.png" align="right" style="padding-left:10px;" width="150"/>

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
