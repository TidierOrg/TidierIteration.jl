"""
    map_tidy(x, f)

Apply the function `f` to each element of `x` and return 
an array. This is similar to Julia's `map()` function, except 
that the collection is the first argument and the function is 
the second argument."

# Arguments

- `x`: an iterable collection.
- `f`: a function.
"""
function map_tidy(x, f)
    [f(z) for z ∈ x]
end

"""
    map_values(d::Dict, f)

Apply the function `f` to each value of `d` and return 
a dictionary with the same keys of `d`. 

# Arguments

- `d`: a dictionary.
- `f`: a function.
"""
function map_values(d::Dict, f)
    Dict(k => f(d[k]) for k ∈ keys(d))
end

"""
    map_keys(d::Dict, f)

Apply the function `f` to each key of `d` and return 
a dictionary with the same values of `d`. 

# Arguments

- `d`: a dictionary.
- `f`: a function.
"""
function map_keys(d::Dict, f)
    Dict(f(k) => d[k] for k ∈ keys(d))    
end

"""
    walk(x, f)

The same as `map_tidy(x, f)` but returns nothing.
"""
function walk(x, f)
    map_tidy(x, f)
    nothing
end

"""
    map2(x, y, f)

Apply the 2-variable function `f` to each element pair `(x_i, y_i)`
where `x_i` (resp. `y_i`) is the i-th element of `x` (resp. `y`).

# Arguments

- `x`: an iterable collection.
- `y`: an iterable collection.
- `f`: a two-variable function.
"""
function map2(x, y, f)
    map_tidy(zip(x, y), z -> f(z...))
end


"""
    map2(d1::Dict, d2::Dict, f)

The same as `Dict(k => f(d1[k], d2[k]) for k ∈ keys(d1) ∩ keys(d2))`,
that is: we apply `f` on `(d1[k], d2[k])` for every `k` common
key between `d1` and `d2`.

# Arguments

- `d1`: a dictionary.
- `d2`: a dictionary.
- `f`: a two-variable function.
"""
function map2(d1::Dict, d2::Dict, f)
    d = Dict(
        k => f(d1[k], d2[k]) 
        for k ∈ keys(d1) ∩ keys(d2)  
        )
        
    d
end

"""
    walk2(x, y, f)

The same as `map2(x, y, f)` but returns nothing.
"""
function walk2(x, y, f)
    apply2(x, y, f)
    nothing
end

"""
    imap(x, f)

Apply the function `f` to each pair `(i, x_i)` for
`i` in the index set of `x`.

# Arguments
- `x`: an iterable collection.
- `f`: a two-variable function.
"""
function imap(x, f)
    e = enumerate(x)
    map2(first.(e), last.(e), f)
end

"""
    imap(d::Dict, f)

Apply the function `f` to each pair `(k, d[k])` for
`k` in the values-set of `d`.

# Arguments
- `d`: a dictionary.
- `f`: a two-variable function.
"""
function imap(d::Dict, f)
    Dict(k => f(k, d[k]) for k ∈ keys(d))
end

"""
    iwalk(x, f)

The same as `imap(x, f)` but returns nothing.
"""
function iwalk(x, f)
    imap(x, f)
    nothing
end

vcat_union(x) = vcat(x..., cols = :union)
hcat_union(x) = hcat(x...)

"""
    map_dfr(x, f)

Apply the function `f` to each element of `x` and 
bind all the rows into a dataframe.
        
# Arguments
        
- `x`: an iterable collection.
- `f`: a function that returns a DataFrame.

# Examples
```julia-repl
julia> map_dfr(1:3, x -> DataFrame(a = rand(3)))
9×1 DataFrame
 Row │ a         
     │ Float64   
─────┼───────────
   1 │ 0.719786
   2 │ 0.208629
   3 │ 0.689885
   4 │ 0.334989
   5 │ 0.0575872
   6 │ 0.0717808
   7 │ 0.825819
   8 │ 0.289853
   9 │ 0.495595
```
"""
function map_dfr(x, f)
    map_tidy(x, f) |> vcat_union
end

"""
    map_dfc(x, f)

Apply the function `f` to each element of `x` and 
bind all the columns into a dataframe.
        
# Arguments
        
- `x`: an iterable collection.
- `f`: a function that returns a DataFrame.

# Examples
```julia-repl
julia> map_dfc(1:3, x -> DataFrame(Symbol("a" * string(x)) => rand(3)))
3×3 DataFrame
 Row │ a1        a2        a3       
     │ Float64   Float64   Float64  
─────┼──────────────────────────────
   1 │ 0.864102  0.342032  0.99839
   2 │ 0.160245  0.912323  0.465663
   3 │ 0.235012  0.516522  0.368654
```
"""
function map_dfc(x, f)
    map_tidy(x, f) |> hcat_union
end

"""
    pmap(x, f)

Apply the function `f` to each element of `x`.
This is a generalization of `apply2`.
        
# Arguments
        
- `x`: an iterable collection.
- `f`: a function with as many variables as there
are elements in `x`.
"""
function pmap(x, f)
    map_tidy(zip(x...), z -> f(z...))
end

"""
    pwalk(x, f)

The same as `pmap(x, f)` but returns nothing.
"""
function pwalk(x, f)
    pmap(x, f)
    nothing
end