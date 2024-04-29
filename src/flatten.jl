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
function flatten_dict(dict::Dict{<:Any, <:Any}, n = 1)
    v = [
        compose_n(flatten_dict, n)(x.first, x.second) for x ∈ dict
    ]

    merge(v...)    
end

"""
    flatten_dicts_to_df(dicts::Vector{<:Dict}, n::Int = 1)

Given a vector of dictionaries, flatten each of them
and concatenate on a dataframe.
"""
function flatten_dicts_to_df(dicts::Vector{<:Dict}, n::Int = 1)
    @chain dicts begin
        @. flatten_dict(_, n)
        @. DataFrame
        vcat(_..., cols=:union)
    end
end