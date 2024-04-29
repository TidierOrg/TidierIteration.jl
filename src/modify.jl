"""
    modify!(x, f)

Modify `x` applying `f` to each of its elements.
"""
function modify!(x, f)
    for (i, x_i) ∈ enumerate(x)
        x[i] = f(x_i)
    end

    x
end

"""
    modify(x, f)

Modify a copy of `x` applying `f` to each of its elements.
"""
function modify(x, f)
    y = deepcopy(x)
    modify!(y, f)

    y
end

"""
    modify_if!(x, p, f)

Modify `x` applying `f` to each of its elements
where the function `p` is `true`.
"""
function modify_if!(x, p, f)
    for (i, x_i) ∈ enumerate(x)
        if p(x_i)
            x[i] = f(x_i)
        end
    end

    x
end

"""
    modify_if(x, p, f)

Modify a copy of `x` applying `f` to each of its elements
where the function `p` is `true`.
"""
function modify_if(x, p, f)
    y = deepcopy(x)
    modify_if!(y, p, f)

    y    
end


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