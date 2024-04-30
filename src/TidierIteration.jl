module TidierIteration

using DataFrames;
export DataFrame;

using Chain;
export @chain;

using JSON3;

include("basic map.jl");
export 
    map_type,
    map_asis,
    map_float,
    map_int,
    map_bool,
    map_string,
    walk;

include("double maps.jl");
export 
    map2_asis,
    map2_type,
    map2_float,
    map2_int,
    map2_bool,
    map2_string,
    walk2;

include("imap.jl");
export 
    imap_asis,
    imap_type,
    imap_float,
    imap_int,
    imap_bool,
    imap_string,
    iwalk;

include("modify.jl");
export 
    modify,
    modify!,
    modify_if,
    modify_if!,
    keep,
    keep!,
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
    none;

include("adverbs.jl");
export 
    compose,
    negate,
    possibly;

include("flatten.jl");
export 
    flatten_dict,
    flatten_dicts_to_df
    
end #module