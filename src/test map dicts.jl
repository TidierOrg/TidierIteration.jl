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