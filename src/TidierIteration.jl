module TidierIteration

using DataFrames;
export DataFrame;

using Chain;
export @chain;

using JSON3;

include("map_walk.jl");
export 
    map_tidy,
    map_values,
    map_keys,
    map_dfr,
    map_dfc,
    walk, 

    map2,
    walk2,

    imap,
    iwalk,
    
    pmap,
    pwalk;

include("modify.jl");
export 
    modify,
    modify!,
    modify_values!,
    modify_if,
    modify_if!,
    keep,
    keep!,
    keep_keys,
    discard,
    discard!,
    compact,
    compact!;

include("predicates.jl");
export 
    is_empty,
    is_non_empty,
    every, 
    some, 
    none, 
    detect_index,
    detect,
    has_element,
    has_key, 
    get_value;

include("adverbs.jl");
export 
    compose,
    compose_n,
    negate,
    possibly;

include("flatten.jl");
export 
    flatten,
    flatten_n,
    flatten_dfr,
    flatten_json,
    flatten_dfr_json, 
    json_string, 
    to_json;
    
end #module