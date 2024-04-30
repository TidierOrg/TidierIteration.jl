using DataFrames, Chain

concat_underscore(a, b) = string(a) * "_" * string(b)

"""
    flatten_dict(key, value)

Transform a pair `key` and `value` into a dictionary.
"""
function flatten_dict(key, value)
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
function flatten_dict(key, value:: Dict{<:Any, <:Any})
    v = [
        Dict(concat_underscore(key, x.first) => x.second) for x ∈ value
    ]

    merge(v...)    
end

"""
    flatten_dict(dict::Dict{<:Any, <:Any}, n = 1)

Remove one layer of dictionaries of a dictionary.
"""
function flatten_dict(dict::Dict{<:Any, <:Any}, n = 1; lists_to_json = true)   
    v = [
        compose_n(flatten_dict, n)(x.first, x.second) for x ∈ dict
    ]

    d = merge(v...)
    
    return d
end

"""
    flatten_dicts_to_df(dicts::Vector{<:Dict}, n::Int = 1)

Given a vector of dictionaries, flatten each of them
and concatenate on a dataframe.
"""
function flatten_dicts_to_df(dicts, n::Int = 1)
    @chain dicts begin
        @. flatten_dict(_, n)
        @. to_json
        @. DataFrame
        vcat(_..., cols=:union)
    end
end

function collapse_json(x)
    x
end

function collapse_json(x::Dict{<:Any, <:Any})
    x |> JSON3.write |> string
end

function to_json(d::Dict{<:Any, <:Any})
    for k ∈ keys(d)
        d[k] = collapse_json(d[k])
    end

    d
end