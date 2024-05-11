"""
    is_empty(x)

Check if a object has length 0.
"""
function is_empty(x) 
    length(x) == 0
end

function is_empty(x::Nothing) 
    true
end

"""
    is_non_empty(x)

Check if a object has length greater than 0.
"""
is_non_empty = !is_empty

"""
    every(x, p)

Do every `x_i` in `x` satisfies `p`?
"""
function every(x, p)
    pass_test = true

    for x_i ∈ x
        if p(x_i) == false
            pass_test = false
            break
        end
    end

    pass_test
end

"""
    some(x, p)

Do some `x_i` in `x` satisfies `p`?
"""
function some(x, p)
    pass_test = false

    for x_i ∈ x
        if p(x_i) == true
            pass_test = true
            break
        end
    end

    pass_test
end

"""
    none(x, p)

Do none `x_i` in `x` satisfies `p`?
"""
none(x, p) = every(x, !p)

"""
    detect_index(x, p)

Returns the index for the first element of 
`x` where `p` is true.
"""
function detect_index(x, p)
    findfirst(p, x)
end

"""
    detect(x, p)

Returns the first element of 
`x` where `p` is true.
"""
function detect(x, p)
    id = detect_index(x, p)

    isnothing(id) && return nothing
    
    x[id]
end

"""
    has_element(x, y)

Returns `true` if `y` is an element of `x`.
"""
function has_element(x, y)
    id = detect(x, z -> isequal(z, y))

    if isnothing(id) 
        return false
    else 
        true 
    end
end

"""
    has_key(d, k)

Returns `true` if the dictionary `d` has key `k`.
"""
has_key = haskey

"""
    get_value(d, k, v = nothing)

Try to get the value `d[k]`, it it exists.
Otherwise, return `v`.
"""
function get_value(d, k, v = nothing)
    if has_key(d, k)
        d[k]
    else
        v
    end
end