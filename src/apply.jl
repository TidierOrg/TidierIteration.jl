using Chain
using DataFrames

function apply(x, f; T = identity)
    [T(f(z)) for z ∈ x]
end

function apply(d::Dict, f; T = identity)
    Dict(k => (T ∘ f)(d[k]) for k ∈ keys(d))
end

function apply_keys(d::Dict, f; T = identity)
    Dict(f(k) => d[k] for k ∈ keys(d))    
end

function walk(x, f; T = identity)
    apply(x, f; T = T)
    nothing
end

function apply2(x, y, f; T = identity)
    apply(zip(x, y), z -> f(z...))
end

function apply2(d1::Dict, d2::Dict, f; T = identity)
    d = Dict(
        k => (T ∘ f)(d1[k], d2[k]) 
        for k ∈ keys(d1) ∩ keys(d2)  
        )
        
    d
end

function walk2(x, y, f; T = identity)
    apply2(x, y, f; T = T)
    nothing
end

function iapply(x, f; T = identity)
    e = enumerate(x)
    apply2(first.(e), last.(e), f; T = T)
end

function iapply(d::Dict, f; T = identity)
    Dict(k => (T ∘ f)(k, d[k]) for k ∈ keys(d))
end

function iwalk(x, f; T = identity)
    iapply(x, f; T = T)
    nothing
end

vcat_union(x) = vcat(x..., cols = :union)
hcat_union(x) = hcat(x...)

function apply_dfr(x, f; T = identity)
    apply(x, f; T = T) |> vcat_union
end

function apply_dfc(x, f; T = identity)
    apply(x, f; T = T) |> hcat_union
end

function papply(x, f; T = identity)
    apply(zip(x...), z -> f(z...))
end
