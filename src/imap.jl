"""
    imap_arr(x, f)

Apply `f` to each pair `(i, x_i)` where `x[i] = x_i`.
"""
function imap_arr(x, f)
    items = collect(enumerate(x))
    x = items .|> first
    y = items .|> last
    map2_arr(x, y, f)
end

"""
    imap_dbl(x, f)

Apply `f` to each pair `(i, x_i)` where `x[i] = x_i` 
and convert it to float (double).
"""
function imap_dbl(x, f)
    imap_arr .|> float
end

"""
    imap_int(x, f)

Apply `f` to each pair `(i, x_i)` where `x[i] = x_i` 
and convert it to integer.
"""
function imap_int(x, f)
    imap_arr .|> Int
end

"""
    imap_lgl(x, f)

Apply `f` to each pair `(i, x_i)` where `x[i] = x_i` 
and convert it to boolean (logical).
"""
function imap_lgl(x, f)
    imap_arr .|> Bool
end

"""
    imap_chr(x, f)

Apply `f` to each pair `(i, x_i)` where `x[i] = x_i` 
and convert it to string (character).
"""
function imap_chr(x, f)
    imap_arr .|> string
end

"""
    imap_chr(x, f)

Apply `f` to each pair `(i, x_i)` where `x[i] = x_i` 
and return nothing.
"""
function iwalk(x, f)
    items = collect(enumerate(x))
    x = items .|> first
    y = items .|> last
    walk2(x, y, f)
end