module LibHanabi

import Libdl

# Load in `deps.jl`, complaining if it does not exist
const depsjl_path = joinpath(@__DIR__, "..", "deps", "deps.jl")
if !isfile(depsjl_path)
    error("LibHanabi was not build properly. Please run Pkg.build(\"LibHanabi\").")
end
include(depsjl_path)
# Module initialization function
function __init__()
    check_deps()
end

using CEnum

include("ctypes.jl")
export Ctm, Ctime_t, Cclock_t

include(joinpath(@__DIR__, "..", "gen", "libhanabi_common.jl"))
include(joinpath(@__DIR__, "..", "gen", "libhanabi_api.jl"))

# export everything
#foreach(names(@__MODULE__, all=true)) do s
#    if startswith(string(s), "SOME_PREFIX")
#        @eval export $s
#    end
#end

end # module
