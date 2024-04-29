using TidierIteration

# adverbs.jl
compose(x -> x^2, x -> x + 1).([1:5;])
negate(isodd).([1:5;])
possibly(log).([1, -1, "a"])

# basic map.jl
map_asis([1:10;], x -> x^2)
map_float([1:10;], x -> x^2)
map_int([1:10;] .|> float, x -> x^2)
map_bool([1:10;], isodd)
map_string([1:10;], x -> x^2)

walk([1:10;], x -> begin x 
    @show x
    x
end
)

# double maps.jl
x = [1:4;]
y = [5:10;]
f(a, b) = a + b

map2_asis(x, y, +)
map2_float(x, y, +)
map2_int(x, y, *)
map2_string(x, y, +)
map2_bool(x, y, >)

walk2(x, y, (x, y) -> begin @show x; nothing end)

# imap.jl
x = [2:5;]
imap_asis(x, (i, x) -> i)
imap_type(x, (i, x) -> x, string)

# modify.jl
x = [1:5;]
modify_if(x, isodd, x -> x^3)
x

modify_if!(x, isodd, x -> x^3)
x

# predicates.jl
x = [1, [1, 2], [], Dict()]
compact(x)
x
compact!(x)
x

y = [1:5;]
keep(y, isodd)
y
keep!(y, isodd)
y

y = [1:5;]
discard(y, isodd)
y
discard!(y, isodd)
y

every([1:5;], isodd)
every([1:2:5;], isodd)

# flatten.jl
d1 = Dict(
    "id" => 1
    ,"events" => Dict(
        1 => Dict(
            "vehicle" => 1
            ,"latitude" => 1
            ,"longitude" => 1
            ,"alarm_ids" => Dict(
                1 => 0
                ,2 => 0
            )
        )        
    )
)

d2 = Dict(
        "id" => 2
        ,"sensor_data" => Dict(1 => 1, 2 => 0, 5 => 0)
        ,"time" => "yesterday"
    )

d = [d1, d2]

d1
flatten_dict(d1)
flatten_dict(d1, 2)
flatten_dict(d1, 3)

flatten_dicts_to_df(d)
flatten_dicts_to_df(d, 2)
flatten_dicts_to_df(d, 3)