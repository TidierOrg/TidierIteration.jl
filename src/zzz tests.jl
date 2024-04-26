using TidierMap

# adverbs.jl
compose(x -> x^2, x -> x + 1).([1:5;])
negate(isodd).([1:5;])
possibly(log).([1, -1, "a"])

# basic map.jl
map_arr([1:10;], x -> x^2)
map_dbl([1:10;], x -> x^2)
map_int([1:10;] .|> float, x -> x^2)

map_lgl([1:10;], isodd)

map_chr([1:10;], x -> x^2)
walk([1:10;], x -> begin x 
    @show x
    x
end
)

# double maps.jl
x = [1:4;]
y = [5:10;]
f(a, b) = a + b

map2_arr(x, y, +)
map2_dbl(x, y, +)
map2_int(x, y, *)
map2_chr(x, y, +)
map2_lgl(x, y, >)

walk2(x, y, (x, y) -> begin @show x; nothing end)

# imap.jl
x = [2:5;]
imap_arr(x, (i, x) -> i)
imap_arr(x, (i, x) -> x)

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

every([1:5;], isodd)
every([1:2:5;], isodd)