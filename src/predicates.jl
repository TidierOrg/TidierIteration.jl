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
    keep(x, p)

Keep the elements `x_i` of collection `x` such that `p(x_i)` is true.
"""
function keep(x, p)
    filter(p, x)
end

"""
    keep!(x, p)

Keep the elements `x_i` of collection `x` such that `p(x_i)` is true.
"""
function keep!(x, p)
    filter!(p, x)
end

"""
    discard(x, p)

Discard the elements `x_i` of collection `x` such that `p(x_i)` is true.
"""
discard(x, p) = keep(x, !p)

"""
    discard!(x, p)

Discard the elements `x_i` of collection `x` such that `p(x_i)` is true.
"""
discard!(x, p) = keep!(x, !p)

"""
    compact(x)

Keep the elements `x_i` of collection `x` such that `is_non_empty(x_i)` is `true`.
"""
function compact(x)
    keep(x, is_non_empty)
end

"""
    compact!(x)

Keep the elements `x_i` of collection `x` such that `is_non_empty(x_i)` is `true`.
"""
function compact!(x)
    keep!(x, is_non_empty)
end

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
