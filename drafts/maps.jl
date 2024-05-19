# simple maps
map_asis(x, f) = apply(x, f)
map_bool(x, f) = apply(x, Bool ∘ f)
map_lgl = map_bool
map_int(x, f) = apply(x, Int ∘ f)
map_dbl(x, f) = apply(x, float ∘ f)
map_flt = map_dbl
map_str(x, f) = apply(x, string ∘ f)
map_chr = map_str

# imaps
map_asis(x, f) = apply(x, f)
map_bool(x, f) = apply(x, Bool ∘ f)
map_lgl = map_bool
map_int(x, f) = apply(x, Int ∘ f)
map_dbl(x, f) = apply(x, float ∘ f)
map_flt = map_dbl
map_str(x, f) = apply(x, string ∘ f)
map_chr = map_str