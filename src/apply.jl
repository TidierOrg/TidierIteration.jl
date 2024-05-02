function apply(x, f; T = identity)
    map(T ∘ f, x)
end

function apply(d::Dict, f, g = identity; T = identity)
    Dict(g(k) => (T ∘ f)(d[k]) for k ∈ keys(d))
end

function walk(x, f)
    apply(x, f)
    nothing
end

function apply2(x, y, f)
    apply(zip(x, y), z -> f(z...))
end

function apply2(d1::Dict, d2::Dict, f, g = identity)
    Dict(
        g(k) => f(d1[k], d2[k]) 
        for k ∈ keys(d1) ∩ keys(d2)            
        )
end