module TidierIteration

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
    modify_if!;

include("predicates.jl");
export 
    is_empty,
    is_non_empty,
    keep,
    keep!,
    discard,
    discard!,
    compact,
    compact!,
    every, 
    some, 
    none;

include("adverbs.jl");
export 
    compose,
    negate,
    possibly;
    
end #module