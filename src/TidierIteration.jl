module TidierIteration

using DataFrames;
export DataFrame;

using Chain;
export @chain;

using JSON3;

include("apply.jl");
export 
    apply,
    apply_keys,
    apply_dfc,
    apply_dfr,
    walk, 

    apply2,
    walk2,

    iapply,
    iwalk,
    
    papply,
    pwalk;

include("modify.jl");
export 
    modify,
    modify!,
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