using Documenter, DocumenterVitepress
using TidierIteration

fmt  = DocumenterVitepress.MarkdownVitepress(
    repo = "https://github.com/TidierOrg/TidierIteration.jl",
    devurl = "dev",
    # deploy_url = "yourgithubusername.github.io/Tidier.jl.jl",
)

# makedocs(;
#     modules = [Tidier],
#     authors = "Karandeep Singh et al.",
#     repo = "https://github.com/TidierOrg/Tidier.jl",
#     sitename = "Tidier.jl",
#     format = fmt,
#     pages= pgs,
#     warnonly = true,
# )

# deploydocs(;
#     repo = "https://github.com/TidierOrg/Tidier.jl",
#     target="build", # this is where Vitepress stores its output
#     branch = "gh-pages",
#     devbranch = "main",
#     push_preview = true,
# )

makedocs(
    sitename = "TidierIteration.jl"
    ,authors = "G. Vituri"
    ,repo = "https://github.com/TidierOrg/TidierIteration.jl"
    ,format = fmt
    ,pages = [
        "index.md"
        ,"Mapping" => "maps.md"
        ,"Modifying" => "modify.md"
        ,"Predicates" => "predicates.md"
        ,"Adverbs" => "adverbs.md"
        ,"Flatten" => "flatten.md"
    ]
    ,warnonly = true
    )

deploydocs(
    repo = "github.com/TidierOrg/TidierIteration.jl.git"
    ,target="build"
    ,branch = "gh-pages"
    ,devbranch = "main"
    ,push_preview = true
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

