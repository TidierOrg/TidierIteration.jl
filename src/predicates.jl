"""
    is_empty(x)

Check if a object has length 0.
"""
function is_empty(x) 
    length(x) == 0
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
