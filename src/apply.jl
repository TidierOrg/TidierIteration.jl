"""
    apply(x, f)

Apply the function `f` to each element of `x` and return 
an array. 

## Arguments

- `x`: an iterable collection.
- `f`: a function.
"""
function apply(x, f)
    [f(z) for z ∈ x]
end

"""
    apply(d::Dict, f)

Apply the function `f` to each value of `d` and return 
a dictionary with the same keys of `d`. 

## Arguments

- `d`: a dictionary.
- `f`: a function.
"""
function apply(d::Dict, f)
    Dict(k => f(d[k]) for k ∈ keys(d))
end

"""
    apply_keys(d::Dict, f)

Apply the function `f` to each key of `d` and return 
a dictionary with the same values of `d`. 

## Arguments

- `d`: a dictionary.
- `f`: a function.
"""
function apply_keys(d::Dict, f)
    Dict(f(k) => d[k] for k ∈ keys(d))    
end

"""
    walk(x, f)

The same as `apply(x, f)` but
returns nothing.
"""
function walk(x, f)
    apply(x, f)
    nothing
end

"""
    apply2(x, y, f)

Apply the 2-variable function `f` to each element pair `(x_i, y_i)`
where `x_i` (resp. `y_i`) is the i-th element of `x` (resp. `y`).

## Arguments

- `x`: an iterable collection.
- `y`: an iterable collection.
- `f`: a two-variable function.
"""
function apply2(x, y, f)
    apply(zip(x, y), z -> f(z...))
end


"""
    apply2(d1::Dict, d2::Dict, f)

The same as `Dict(k => f(d1[k], d2[k]) for k ∈ keys(d1) ∩ keys(d2))`,
that is: we apply `f` on `(d1[k], d2[k])` for every `k` common
key between `d1` and `d2`.

## Arguments

- `d1`: a dictionary.
- `d2`: a dictionary.
- `f`: a two-variable function.
"""
function apply2(d1::Dict, d2::Dict, f)
    d = Dict(
        k => f(d1[k], d2[k]) 
        for k ∈ keys(d1) ∩ keys(d2)  
        )
        
    d
end

"""
    walk2(x, y, f)

The same as `apply2(x, y, f)` but returns nothing.
"""
function walk2(x, y, f)
    apply2(x, y, f)
    nothing
end

"""
    iapply(x, f)

Apply the function `f` to each pair `(i, x_i)` for
`i` in the index set of `x`.

## Arguments
- `x`: an iterable collection.
- `f`: a two-variable function.
"""
function iapply(x, f)
    e = enumerate(x)
    apply2(first.(e), last.(e), f)
end

"""
    iapply(d::Dict, f)

Apply the function `f` to each pair `(k, d[k])` for
`k` in the values-set of `d`.

## Arguments
- `d`: a dictionary.
- `f`: a two-variable function.
"""
function iapply(d::Dict, f)
    Dict(k => f(k, d[k]) for k ∈ keys(d))
end

"""
    iwalk(x, f)

The same as `iapply(x, f)` but returns nothing.
"""
function iwalk(x, f)
    iapply(x, f)
    nothing
end

vcat_union(x) = vcat(x..., cols = :union)
hcat_union(x) = hcat(x...)

"""
    apply_dfr(x, f)

Apply the function `f` to each element of `x` and 
bind all the rows into a dataframe.
        
## Arguments
        
- `x`: an iterable collection.
- `f`: a function that returns a DataFrame.
"""
function apply_dfr(x, f)
    apply(x, f) |> vcat_union
end

"""
    apply_dfc(x, f)

Apply the function `f` to each element of `x` and 
bind all the columns into a dataframe.
        
## Arguments
        
- `x`: an iterable collection.
- `f`: a function that returns a DataFrame.
"""
function apply_dfc(x, f)
    apply(x, f) |> hcat_union
end

"""
    papply(x, f)

Apply the function `f` to each element of `x`.
This is a generalization of `apply2`.
        
## Arguments
        
- `x`: an iterable collection.
- `f`: a function with as many variables as there
are elements in `x`.
"""
function papply(x, f)
    apply(zip(x...), z -> f(z...))
end

"""
    pwalk(x, f)

The same as `papply(x, f)` but returns nothing.
"""
function pwalk(x, f)
    papply(x, f)
    nothing
end