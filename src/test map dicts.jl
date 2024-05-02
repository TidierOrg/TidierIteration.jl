using TidierIteration
d = Dict(1 => 1, 2 => 2, 3 => 3)

fff(x) = 2x

@chain begin
    d
    @aside @show _
    map_asis(fff)
    @aside @show _
    map_asis(x -> x - 1)
end

@chain begin
    d
    @aside @show _
    map_asis(hash)
end

d = Dict(
    "a" => 1
    ,"b" => Dict(
        "b1" => 1
        ,"b2" => 2
    )
)

@chain begin
    d
    # flatten_dict
    flatten_dict_to_json
end

d2 = [d, d]

flatten_dfr(d2, n = 2)

dicts = [
    Dict(
        "title" => "A vida e as opiniões do cavalheiro Tristram Shandy"
        ,"year" => 2022
        ,"author" => Dict(
            "first_name" => "Laurence"
            ,"last_name" => "Sterne"
        )        
    )

    ,Dict(
        "title" => "Viagem a roda do meu quarto"
        ,"year" => 1997
        ,"author" => Dict(
            "first_name" => "Xavier"
            ,"last_name" => "Maistre"
            ,"middle_name" => "De"
        )
        ,"editions" => [1997, 1999, 2002]
    )
]

flatten_dfr(dicts, n = 0)
flatten_dfr(dicts, n = 1)
flatten_dfr(dicts, n = 2)

flatten_dfr_json(dicts, n = 0)
flatten_dfr_json(dicts, n = 1)
flatten_dfr_json(dicts, n = 2)

f = possibly(log, 0)
function f2(x, y, z = 3; a = 9)
    x + y + z + a
end

f2p = possibly(f2, -99)
f2p(0)
f2p(0, 0)
f2p(0, 0, -1)
f2p(0, 0, 1, a = 0)
f2p(0, 0, 1, a = "a")
f2p(0, 0, Dict(1=>2), a = "a")

f3p = possibly(log, -999)

f3p(1)
f3p(0)
f3p("a")