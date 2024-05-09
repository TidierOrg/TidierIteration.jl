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

function detect_index(x, p)
    findfirst(p, x)
end

function detect(x, p)
    id = detect_index(x, p)

    isnothing(id) && return nothing
    
    x[id]
end

function has_element(x, y)
    id = detect(x, z -> isequal(z, y))

    if isnothing(id) 
        return false
    else 
        true 
    end
end

has_key = haskey