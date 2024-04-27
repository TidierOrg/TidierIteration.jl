using Documenter #, DocumenterVitepress
using TidierIteration

makedocs(
    sitename = "TidierIteration.jl"
    ,pages = [
        "index.md"
        ,"Mapping" => "maps.md"
        ,"Modifying" => "modify.md"
        ,"Predicates" => "predicates.md"
        ,"Adverbs" => "adverbs.md"
    ]
    ,warnonly = true
    )

deploydocs(
    repo = "github.com/TidierOrg/TidierIteration.jl.git",
)

# makedocs(;
#     modules=[TidierIteration],
#     authors="TidierIteration",
#     repo="https://github.com/vituri/TidierIteration.jl",
#     sitename="TidierIteration.jl",
#     # format=DocumenterVitepress.MarkdownVitepress(
#     #     repo = "https://github.com/vituri/TidierIteration.jl",
#     #     devurl = "dev",
#     #     deploy_url = "vituri.github.io/TidierIteration.jl",
#     # ),
#     pages=[
#         "Home" => "index.md",
#     ],
#     warnonly = true,
# )

# servedocs()

# deploydocs(;
#     repo="github.com/vituri/TidierIteration.jl",
#     push_preview=true,
# )

