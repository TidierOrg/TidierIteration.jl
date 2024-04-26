"""
    map_arr(x, f)

Apply function `f` to the list `x`.
"""
function map_arr(x, f)
    map(f, x)
end

"""
    map_dbl(x, f)

Apply function `f` to the list `x` and convert the result to float.
"""
function map_dbl(x, f)
    map(f, x) .|> float
end

"""
    map_int(x, f)

Apply function `f` to the list `x` and convert the result to integer.
"""
function map_int(x, f)
    map(f, x) .|> Int
end

"""
    map_lgl(x, f)

Apply function `f` to the list `x` and convert the result to logical (boolean).
"""
function map_lgl(x, f)
    map(f, x) .|> Bool
end

"""
    map_chr(x, f)

Apply function `f` to the list `x` and convert the result to string (character).
"""
function map_chr(x, f)
    map(f, x) .|> string
end

"""
walk(x, f)

Apply function `f` to the list `x` and return nothing.
"""
function walk(x, f)
    map_arr(x, f)
    nothing
end