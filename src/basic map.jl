"""
    map_type(x, f, T)

Apply function `f` to the list `x` and convert each element with function `T`.
"""
function map_type(x, f, T)
    map(f, x) .|> T
end

"""
    map_arr(x, f)

Apply function `f` to the list `x` and do no conversion.
"""
function map_asis(x, f)
    map(f, x)
end

"""
    map_float(x, f)(x, f)

Apply function `f` to the list `x` and convert the result to float.
"""
map_float(x, f) = map_type(x, f, float)

"""
    map_int(x, f)

Apply function `f` to the list `x` and convert the result to integer.
"""
map_int(x, f) = map_type(x, f, Int)

"""
    map_bool(x, f)

Apply function `f` to the list `x` and convert the result to logical (boolean).
"""
map_bool(x, f) = map_type(x, f, Bool)

"""
    map_string(x, f)

Apply function `f` to the list `x` and convert the result to string (character).
"""
map_string(x, f) = map_type(x, f, string)

"""
    walk(x, f)

Apply function `f` to the list `x` and return nothing.
"""
function walk(x, f)
    f.(x)
    nothing
end