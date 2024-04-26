"""
    compose(args...)

Create the composite function of the `args...`.

`compose(f1, f2)(x)` is equal to `f2(f1(x))`.
"""
function compose(args...)
    reduce(∘, args)
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