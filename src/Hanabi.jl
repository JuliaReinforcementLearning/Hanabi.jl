module Hanabi

const depsjl_path = joinpath(@__DIR__, "..", "deps", "deps.jl")
if !isfile(depsjl_path)
    error("Hanabi was not build properly. Please run Pkg.build(\"Hanabi\").")
end

include(depsjl_path)

include(joinpath(@__DIR__, "..", "gen", "libhanabi_common.jl"))
include(joinpath(@__DIR__, "..", "gen", "libhanabi_api.jl"))

# Module initialization function
function __init__()
    check_deps()
end

end # module
