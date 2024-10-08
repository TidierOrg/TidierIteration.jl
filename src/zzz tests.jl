using TidierIteration

# adverbs.jl
x = [1:10;]
map_tidy(x, x -> x^2)

f(x) = x + 1

letras = split("abcdefghijk", "") .|> string

x = [Dict(letras[x] => x^2) for x ∈ 1:10]

@chain x begin
    @. map_asis(_, f)
    # merge(_...)
    @. keep(_, x -> x.second |> isodd)
    compact
    flatten_dfr
end

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


x = [1, nothing, [], "a", [2, 3]]
compact(x)

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

map(d1) do x
    x
end

d1["aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"] = 21939812
hash("aksokda")

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

flatten_dict(d1, 3)

flatten_dicts_to_df(d)
flatten_dicts_to_df(d, 2)
flatten_dicts_to_df(d, 3)

df = DataFrame(a = 1, b = "avbdas", c = Dict(1 => 2))
using JSON3

c = names(df)[1]

for c ∈ names(df)
    @show df[1, c] = df[1, c] |> JSON3.write #|> string
end

d2["sensor_data"] = "aaaaaaaaaaaa"

for x ∈ eachcol(df)
    x = x |> JSON3.write

    @show x
end


v = [5:9;]
enumerate(v) |> collect
Dict(i => x for (i, x) ∈ enumerate(v))


enumerate(d2) |> collect

d2 |> Pair

d2 = Dict(
        "id" => 2
        ,"sensor_data" => Dict(1 => 1, 2 => 0, 5 => 0)
        ,"time" => "yesterday"
    )

d2 .|> first