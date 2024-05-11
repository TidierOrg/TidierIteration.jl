# Flatten

The flatten family of functions aim to "reduce one level" of a object: if you have a dictionary where some values are also dictionaries, we "peel" this inner dictionary and spread it among the original dictionary. This is specially useful when parsing the output of a rest API and transforming it into a dataframe.

## Dictionaries and inner dictionaries

Consider the following nested dictionary describing a vehicle:

```@example 1
using TidierIteration

d1 = Dict(
    "id" => 1
    ,"model" => "Kadettão"
    ,"year" => 1998
    ,"details" => Dict(
        "plate_number" => "XXX1234"
        ,"chassi" => 999
        ,"location" => Dict(
            "country" => "Brasil"
            ,"state" => "São Paulo"
            )
        )
    )
```

We can flat the inner dictionaries as follows:

```@example 1
d1
flatten(d1, n = 1)
```

We can apply the `flatten` `n` consecutive times adding `n` to the end of the function call:

```@example 1
flatten(d1, n = 2)
```

Converting it to a dataframe is simple:

```@example 1
flatten(d1, n = 1) |> DataFrame
```

In case of a vector of nested dictionaries, there is the `flatten_dfr`:

```@example 1
d2 = Dict(
    "id" => 2
    ,"model" => "Monzão"
    ,"year" => 1995
    ,"details" => Dict(
        "plate_number" => "ZZZ1234"
        ,"chassi" => 1234
        ,"location" => Dict(
            "country" => "Brasil"
            ,"state" => "Amazonas"
            )
        )
        ,"stolen" => true
    )

ds = [d1, d2]

flatten_dfr(ds, n = 2)
```

If you want to convert the inner dictionaries/arrays to json (useful when saving to a relational database), use the function

```@examples 1
flatten_dfr_json(ds, n = 1)
```

## API

```@docs
flatten
flatten_dfr
flatten_dfr_json
```