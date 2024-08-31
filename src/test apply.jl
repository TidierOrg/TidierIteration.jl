function map_tidy(x, f)
    map(f, x)
end

d = Dict(1 => 1, 2 => 2)

function map_values(d::Dict, f, g = identity)

    Dict(g(k) => f(d[k]) for k ∈ keys(d))

end

map_values(d, x -> x^2, x -> 0)

values(d) |> collect



findfirst(x -> x > 99, [5:10;])
v = [4:9;]
v[nothing]

findfirst(iseven, Dict(1=>2, "b"=>3))
findfirst(isodd, Dict(1=>2, "b"=>3))

d1 = Dict(1=>1, 2=>2)
d2 = Dict(2=>2, 3=>3)

map2(d1, d2, +)

x = [1:4;]
y = [1:4;]
isequal(x, y)


x = [5:10;]
d = Dict(i => i+1 for i ∈ x)

map_tidy(x, x->x^2)
map_values(d, x->x^2)

iapply(x, (i, x)-> (i, x^2))
iapply(d, (i, x)-> (i, x^2))

values(x)


x2 = [
    [1:2;]
    ,[3:4;]
    ,[5:7;]
]

f(a, b, c) = a + b + c
papply(x2, f)


df = DataFrame(a = 1:2, b = 3:4, c = 5:6)

map(identity, eachrow(df))
x = [5:9;]
filter(isodd, d1)
filter(isodd, x)

[i => i for i ∈ 1:5 if isodd(i)]

p = isodd
d = Dict(i => i for i ∈ 1:5)
Dict(k => d[k] for k ∈ keys(d) if p(d[k]))

filter(x -> isodd(x.first), d)

findfirst(isodd, x)
findfirst(isodd, d)

p = isodd
id = findfirst(p, x)
isnothing(id) && return nothing
x[id]

function detect_index(x, p)
    findfirst(p, x)
end

function detect(x, p)
    id = detect_index(x, p)

    isnothing(id) && return nothing
    
    x[id]
end

function has_element(x, y)
    id = detect(x, z -> isequal(z, y))

    if isnothing(id) 
        return false 
    else 
        true 
    end
end

has_element(d, 6)

haskey