module TidierMap

include("basic map.jl");
export 
    map_arr,
    map_dbl,
    map_int,
    map_lgl,
    map_chr,
    walk;

include("double maps.jl");
export 
    map2_arr,
    map2_dbl,
    map2_int,
    map2_lgl,
    map2_chr,
    walk2;

include("imap.jl");
export 
    imap_arr,
    imap_dbl,
    imap_int,
    imap_lgl,
    imap_chr,
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