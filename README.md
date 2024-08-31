# TidierIteration.jl
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](https://github.com/TidierOrg/TidierIteration.jl/blob/main/LICENSE)
[![Docs: Latest](https://img.shields.io/badge/Docs-Latest-blue.svg)](https://tidierorg.github.io/TidierIteration.jl/)
[![Downloads](https://img.shields.io/badge/dynamic/json?url=http%3A%2F%2Fjuliapkgstats.com%2Fapi%2Fv1%2Fmonthly_downloads%2FTidierIteration&query=total_requests&suffix=%2Fmonth&label=Downloads)](http://juliapkgstats.com/pkg/TidierIteration)

<img src="/assets/logo.png" align="right" style="padding-left:10px;" width="150"/>

## What is TidierIteration.jl?

TidierIteration.jl is a 100% Julia implementation of the `purrr` R package. It aims to ease the different ways to map functions to Julia objects: Arrays, Dicts, and so on. It also provides some tools of functional programming: adverbs, composition, safe-functions and more.

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

## Comparison to `purrr`

In R [`purrr` package](https://purrr.tidyverse.org/), there are many ways to apply a function to each element of a set: the many `map_` variants (`map_lgl` returns a vector of logicals, `map_chr` returns a vector of strings/characters, etc) and so on exist because the `map` function returns a `list` in R, which is a wild beast (R lists allow any kind of elements, and few functions are optimized (i.e. vectorized) on them as opposed to vectors). In comparison, R vectors are always of just one type (integers, booleans, etc.)

In Julia, arrays are already the most general structure in the sense that they can contain any kind of element. Arrays of just one type (say, integers) are still arrays. We don't need the `_lgl` and `_chr` variants.

Besides that, the name `map` is already taken in Julia and its arguments are fatally in the opposite order of the purrr `map`! Because of that, we decided to implement the `map_tidy` function, which takes an iterable object `x` as the first argument and a function `f` as the second. `map_tidy(x, f)` means that for each element of `x`, we want to apply the function `f` and return an array.

So, instead of defining a function like `map_int` in Julia, you can just type:

```julia
map_tidy(x, Int ∘ f)
```

or, even better, let `f` return an integer.

### Base Julia `map`ping

In Julia we already have 3 ways to apply a function to each element of an array `x`, and they are very elegant ones:

```
map(f, x)
```

or 

```
[f(xi) for xi ∈ x]
```

or the one we prefer:

```
f.(x)
```

### Why use `TidierIteration` then?

- The object `x` is always the first element of the `map_*` family, so it's easy to pipe them;

- We extend the `map_*` family to Julia objects which are not `map`ped by default, like dictionaries, for which we have `map_values()` and `map_keys()`;

- We also provide the `map2`, `imap` and `pmap` methods to `map` over 2 or n elements at the same time;

- We provide the `flatten_*` functions to tidy wild dictionaries (like JSON responses from APIs) and many adverbs.

## Complete list of implemented functions

See the [documentation](https://tidierorg.github.io/TidierIteration.jl/dev/) for examples.

### Map

`map_tidy`, `map_values`, `map_keys`, `map_dfr`, `map_dfc`, `map2`, `imap`, `pmap`

### Walk

`walk`, `walk2`, `iwalk`, `pwalk`;

### Modify

`modify`, `modify!`, `modify_values!`, `modify_if`, `modify_if!`

### Keep, Discard, and Compact

`keep`, `keep!`, `keep_keys`, `discard`, `discard!`, `compact`, `compact!`;

### Predicates

`is_empty`, `is_non_empty`, `every`, `some`, `none`, `detect_index`, `detect`, `has_element`, `has_key`, `get_value`;

### Adverbs

`compose`, `compose_n`, `negate`, `possibly`;

### Flatten

`flatten`, `flatten_n`, `flatten_dfr`, `flatten_json`, `flatten_dfr_json`, `json_string`, `to_json`;