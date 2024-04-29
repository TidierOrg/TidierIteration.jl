"""
    compose(args...)

Create the composite function of the `args...`.

`compose(f1, f2)(x)` is equal to `f2(f1(x))`.
"""
function compose(args...)
    reduce(∘, args)
end

"""
    compose_n(f, n = 2)

Compose the function `f` with itself `n` times.
"""
function compose_n(f, n = 2)
    n < 0 && throw("n must non-negative!")
    n == 0 && return identity
    n == 1 && return f

    reduce(∘, repeat([f], n))
end


"""
    negate(f)

Create the negation of `f`.
"""
function negate(f)
    !f
end

"""
    possibly(f, otherwise = nothing)

Create a modified version of the function `f` such that
it returns `otherwise` when `f(x)` is an error.
"""
function possibly(f, otherwise = nothing)
    x -> begin
        try
            f(x)
        catch
            otherwise
        end
    end
end