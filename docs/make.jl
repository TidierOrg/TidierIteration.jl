using Documenter #, DocumenterVitepress
using TidierMap

makedocs(
    sitename = "TidierMap.jl"
    ,pages = [
        "index.md"
        ,"Mapping" => "maps.md"
        ,"Modifying" => "modify.md"
        ,"Predicates" => "predicates.md"
    ]
    ,warnonly = true
    )

deploydocs(
    repo = "github.com/vituri/TidierMap.jl.git",
)

# makedocs(;
#     modules=[TidierMap],
#     authors="TidierMap",
#     repo="https://github.com/vituri/TidierMap.jl",
#     sitename="TidierMap.jl",
#     # format=DocumenterVitepress.MarkdownVitepress(
#     #     repo = "https://github.com/vituri/TidierMap.jl",
#     #     devurl = "dev",
#     #     deploy_url = "vituri.github.io/TidierMap.jl",
#     # ),
#     pages=[
#         "Home" => "index.md",
#     ],
#     warnonly = true,
# )

# servedocs()

# deploydocs(;
#     repo="github.com/vituri/TidierMap.jl",
#     push_preview=true,
# )

