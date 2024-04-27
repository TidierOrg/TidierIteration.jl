"""
    map2_asis(x, y, f)

Apply the two-variable function `f` to the objects `x` and `y`.
"""
function map2_asis(x, y, f)
    [f(z...) for z ∈ zip(x, y)]
end

"""
    map2_type(x, y, f, T)

Apply the two-variable function `f` to the objects `x` and `y` 
and convert each element using function `T`.
"""
function map2_type(x, y, f, T)
    map2_asis(x, y, f) .|> T
end

"""
map2_dbl(x, y, f)

Apply the two-variable function `f` to the objects `x` and `y`
and convert it to float.
"""
map2_float(x, y, f) = map2_type(x, y, f, float)

"""
map2_int(x, y, f)

Apply the two-variable function `f` to the objects `x` and `y`
and convert it to integer.
"""
map2_int(x, y, f) = map2_type(x, y, f, Int)

"""
map2_chr(x, y, f)

Apply the two-variable function `f` to the objects `x` and `y`
and convert it to string.
"""
map2_string(x, y, f) = map2_type(x, y, f, string)

"""
map2_lgl(x, y, f)

Apply the two-variable function `f` to the objects `x` and `y`
and convert it to boolean.
"""
map2_bool(x, y, f) = map2_type(x, y, f, Bool)

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