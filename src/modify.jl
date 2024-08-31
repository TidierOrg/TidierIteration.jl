"""
    modify!(x, f)

Modify `x` in place by applying `f` to each of its elements.
"""
function modify!(x, f)
    for (i, x_i) ∈ enumerate(x)
        x[i] = f(x_i)
    end

    x
end

"""
    modify_values!(d::Dict, f)

Modify the values of a Dict `d` in place by applying `f` to each of its values.
"""
function modify_values!(d::Dict, f)
    for k ∈ keys(d)
        d[k] = f(d[k])
    end

    d
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
    modify_if!(x, f, p)

Modify `x` applying `f` to each of its elements
where the function `p` is `true`.
"""
function modify_if!(x, f, p)
    for (i, x_i) ∈ enumerate(x)
        if p(x_i)
            x[i] = f(x_i)
        end
    end

    x
end

function modify_if!(d::Dict, f, p)
    for k ∈ keys(d)
        if p(d[k])
            d[k] = f(d[k])
        end
    end

    d
end

"""
    modify_if(x, f, p)

Modify a copy of `x` applying `f` to each of its elements
where the function `p` is `true`.
"""
function modify_if(x, f, p)
    y = deepcopy(x)
    modify_if!(y, f, p)

    y    
end


"""
    keep(x, p)

Keep the elements `x_i` of collection `x` such that `p(x_i)` is true.
"""
function keep(x, p)
    filter(p, x)
end

function keep(d::Dict, p)
    Dict(k => d[k] for k ∈ keys(d) if p(d[k]))
end

function keep_keys(d::Dict, p)
    Dict(k => d[k] for k ∈ keys(d) if p(k))
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