"""
    imap_arr(x, f)

Apply `f` to each pair `(i, x_i)` where `x[i] = x_i`.
"""
function imap_asis(x, f)
    items = collect(enumerate(x))
    x = items .|> first
    y = items .|> last
    map2_asis(x, y, f)
end

"""
    imap_type(x, f, T)

Apply `f` to each pair `(i, x_i)` where `x[i] = x_i` and convert 
it using function `T`.
"""
function imap_type(x, f, T)
    items = collect(enumerate(x))
    x = items .|> first
    y = items .|> last
    map2_type(x, y, f, T)
end

"""
    imap_float(x, f)

Apply `f` to each pair `(i, x_i)` where `x[i] = x_i` 
and convert it to float.
"""
imap_float(x, f) = imap_type(x, f, float)

"""
    imap_int(x, f)

Apply `f` to each pair `(i, x_i)` where `x[i] = x_i` 
and convert it to integer.
"""
imap_int(x, f) = imap_type(x, f, Int)

"""
    imap_bool(x, f)

Apply `f` to each pair `(i, x_i)` where `x[i] = x_i` 
and convert it to boolean.
"""
imap_bool(x, f) = imap_type(x, f, Bool)

"""
    imap_string(x, f)

Apply `f` to each pair `(i, x_i)` where `x[i] = x_i` 
and convert it to string.
"""
imap_string(x, f) = imap_type(x, f, string)

"""
    iwalk(x, f)

Apply `f` to each pair `(i, x_i)` where `x[i] = x_i` 
and return nothing.
"""
function iwalk(x, f)
    items = collect(enumerate(x))
    x = items .|> first
    y = items .|> last
    walk2(x, y, f)
end