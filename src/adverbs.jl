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

    compose(repeat([f], n)...)
end


"""
    negate(f)

Return a function which is the negation of `f`.
"""
function negate(f)
    !f
end

"""
    possibly(f, otherwise = nothing)

Create a modified version of the function `f` such that
it returns `otherwise` when `f(x)` throws an error.
"""
function possibly(f, otherwise = nothing; silently = true)

    function f2(args...; kwargs...)
        try
            f(args...; kwargs...)
        catch
            if silently == false
                @warn "Error executing function! Returning `nothing` instead..."
            end
            
            otherwise
        end
    end
    
end