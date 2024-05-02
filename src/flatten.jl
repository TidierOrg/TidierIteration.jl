concat_underscore(a, b) = string(a) * "_" * string(b)

"""
    flatten_dict(key, value)

Transform a pair `key` and `value` into a dictionary.
"""
function flatten(key, value)
    Dict(key => value)
end

"""
    flatten_dict(key, value:: Dict{<:Any, <:Any})

Given a `key` and a `value` which is a dictionary,
concatenate the `key` string to every other key of the 
dictionary `value`. A dictionary of dictionaries will
become only a dictionary of values.

Thus, we are "flattening" the inner dictionaries.
""" 
function flatten(key, value:: Dict{<:Any, <:Any})
    v = [
        Dict(concat_underscore(key, x.first) => x.second) for x ∈ value
    ]

    merge(v...)    
end

"""
    flatten_dict(dict::Dict{<:Any, <:Any}, n = 1)

Remove one layer of dictionaries of a dictionary.
"""
function flatten(dict::Dict{<:Any, <:Any}; n = 1)   
    v = [
        compose_n(flatten, n)(x.first, x.second) for x ∈ dict
    ]

    d = merge(v...)
    
    return d
end

flatten_n(n::Int) = compose_n(flatten, n)

"""
    flatten_dfr(dicts::Vector{<:Dict}, n::Int = 1)

Given a vector of dictionaries, flatten each of them
and concatenate on a dataframe.
"""
function flatten_dfr(dicts; n::Int = 1)
    @chain dicts begin
        @. flatten_n(n)(_)
        @. DataFrame
        vcat(_..., cols=:union)
    end
end

"""
    flatten_dfr_json(dicts::Vector{<:Dict}, n::Int = 1)

Given a vector of dictionaries, flatten each of them
and concatenate on a dataframe; remaining
vectors and dictionaries are converted to a
json string.
"""
function flatten_dfr_json(dicts; n::Int = 1)
    @chain dicts begin
        @. flatten_n(n)(_)
        @. flatten_json
        @. DataFrame
        vcat(_..., cols=:union)
    end
end

json_string(x) = x |> JSON3.write |> string
to_json(x) = x
to_json(x::Dict) = x |> json_string
to_json(x::Vector) = x |> json_string

function flatten_json(d)
    map_asis(d, to_json)
end