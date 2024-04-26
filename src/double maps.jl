"""
    map2_arr(x, y, f)

Apply the two-variable function `f` to the objects `x` and `y`.
"""
function map2_arr(x, y, f)
    [f(z...) for z ∈ zip(x, y)]
end

"""
map2_dbl(x, y, f)

Apply the two-variable function `f` to the objects `x` and `y`
and convert it to float.
"""
function map2_dbl(x, y, f)    
    map2_arr(x, y, f) .|> float
end

"""
map2_int(x, y, f)

Apply the two-variable function `f` to the objects `x` and `y`
and convert it to integer.
"""
function map2_int(x, y, f) 
    map2_arr(x, y, f) .|> Int
end

"""
map2_chr(x, y, f)

Apply the two-variable function `f` to the objects `x` and `y`
and convert it to character (string).
"""
function map2_chr(x, y, f) 
    map2_arr(x, y, f) .|> string
end

"""
map2_lgl(x, y, f)

Apply the two-variable function `f` to the objects `x` and `y`
and convert it to logical (boolean).
"""
function map2_lgl(x, y, f) 
    map2_arr(x, y, f) .|> Bool
end

"""
    walk2(x, y, f)

Apply the two-variable function `f` to the objects `x` and `y`
and return nothing.
"""
function walk2(x, y, f)
    for z ∈ zip(x, y)
        f(z...)
    end

    nothing
end