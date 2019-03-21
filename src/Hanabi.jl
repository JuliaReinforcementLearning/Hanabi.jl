module Hanabi

include(joinpath(@__DIR__, "..", "gen", "LibTemplate.jl"))
@reexport using .LibHanabi

include("utils.jl")

end # module
