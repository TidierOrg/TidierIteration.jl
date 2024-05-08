# Applying functions to collections

The `apply` family consists of functions that help apply a function `f` to a collection `x`.

In base Julia there is already the `map` function, but

- It does not work on dictionaries;

- The function is the first argument, and the collection is the second. This make it less "pipeable".

## `f` is a one-variable function

Given a collection `x` and a one-variable function `f`, we can apply `f` to each element of `x` as follows:

```@example 1
using TidierIteration;

x = [3:6;];
f(x) = x^2;

apply(x, f)
```

This, of course, is the same as
```@example 1
map(f, x)
```

or
```@example 1
f.(x)
```

Things get more interesting when we have a dictionary as follows:

```@example 1
d = Dict(i => i for i in [1:4;])
```

```@example 1
apply(d, f)
```

while `map(f, d)` gives an error.

We can see a dictionary as a collection with named entries, and `apply(d, f)` means that we apply `f` to each value of `d` while keeping the keys of `d` intact.

In case you want to modify the keys of a dictionary, there is the special function

```@example 1
apply_keys(d, x -> -x)
```

If you just want to apply `f` for its side-effects and return nothing, use
```@example 1
walk(x, f)
```

Every member of the apply family has a optional named argument `T` which is a function that will be applied to each element, usually to convert it to a specific type:

```@example 1
apply(x, f, T = string)
```

## `f` is a two-variable function and we have two collections

We can also apply a two-variable function `f` to two collections `x` and `y` by applying `f` to each pair `(x_i, y_i)` where `x_i` is the `i-th` element of `x` and `y_i` the `i-th` element of `y`. If `x` and `y` have different sizes, we iterate until one of them ends.

```@example 2
using TidierIteration;

x = [1:4;]
y = [5:7;]
f(x, y) = x + y

apply2(x, y, f)
```

When `x` and `y` are dictionaries, we iterate on the set of common keys:

```@example 2
using TidierIteration;

d1 = Dict(i => i for i in [1:4;])
d2 = Dict(i => i^2 for i in [3:9;])

apply2(d1, d2, f)
```

## `f` is a two-variable function and we have only one collection

In this case, we can use the index of each element of `x` as the first variable to be applied on `f, that is, we apply `f` on the pairs `(i, x_i)` for each index `i` of `x`.

```@example 3
using TidierIteration;

x = [3:6;]
f(i, x) = Dict(i => x)
iapply(x, f)
```

When `x` is a dictionary, the elements `i` are the keys of `x`:

```@example 3
d = Dict(i => i for i in [1:4;])
g(k, v) = k + v

iapply(d, g)
```

## Converting to dataframe

When the output of `f` is a dataframe, we can bind all rows (or columns) quickly as follows:

```@example 4
using TidierIteration;

x = [1:4;]
h(x) = DataFrame(:x => x)
apply_dfr(x, h)
```

or 

```@example 4
s = "abcd";
h2(s) = DataFrame(string(s) => rand(1))
h2("b")
apply_dfc(s, h2)
```

## API

<!-- ```@docs
apply
apply2
apply_keys
apply_dfc
apply_dfr
iapply
walk 
walk2
``` -->
