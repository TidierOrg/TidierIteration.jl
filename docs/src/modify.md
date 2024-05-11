# Modify

Functions to modify, filter and discard elements of a collection.

## Modifying

`modify` applies a function `f` to each element of `x`.

```@examples modify
x = [1:4;]
modify!(x, x->x^2)
x
```

It also work on dictionaries, keeping the keys intact:
```@examples modify
d = Dict(i => i for i in [1:4;])
modify(d, x->x^2)
```

We can also modify only when a function `p` is true:
```@examples modify
y = [1:6;]
modify_if(y, x->x^2, isodd)
```

## Filtering
We can discard some elements of `x` when a function `p` is false:

```@examples keep
x = [1:4;]
keep(x, isodd)
```

This is the same as base Julia `filter(p, x)`. It also work on dictionaries:

```@examples keep
d = Dict(i => i for i in [1:4;])
keep(x, isodd)
```

If we want to apply `p` to the keys of a dictionary, use
```@examples keep
d = Dict(i => i^2 for i in [1:4;])
keep_keys(d, isodd)
```

There is also the negation of `keep`: `discard`. It's definition is trivial: `discard(x, p) = keep(x, !p)`.

When we want to throw away "length zero elements", use `compact`:
```@examples keep
x = [1, [1, 2], nothing, [], ""]
compact(x)
```

## API

```@docs
modify
modify!
modify_if
modify_if!
keep
keep!
discard
discard!
compact
compact!
```