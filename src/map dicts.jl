function map_asis(d::Dict, f)

    v = [Dict(k => f(d[k])) for k ∈ keys(d)]

    merge(v...)

end

function imap_asis(d::Dict, f)

    v = [Dict(k => f(k, d[k])) for k ∈ keys(d)]

    merge(v...)
end