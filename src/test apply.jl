function apply(x, f)
    map(f, x)
end

d = Dict(1 => 1, 2 => 2)

function apply(d::Dict, f, g = identity)

    Dict(g(k) => f(d[k]) for k ∈ keys(d))

end

apply(d, x -> x^2, x -> 0)

values(d) |> collect



findfirst(x -> x > 99, [5:10;])
v = [4:9;]
v[nothing]

findfirst(iseven, Dict(1=>2, "b"=>3))
findfirst(isodd, Dict(1=>2, "b"=>3))

d1 = Dict(1=>1, 2=>2)
d2 = Dict(2=>2, 3=>3)

apply2(d1, d2, +)

x = [1:4;]
y = [1:4;]
isequal(x, y)