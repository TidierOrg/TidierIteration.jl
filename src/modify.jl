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