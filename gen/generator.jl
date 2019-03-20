using Clang

const HANABI_H = joinpath(@__DIR__, "..", "deps", "usr", "include", "pyhanabi.h") |> normpath

wc = init(; headers = [HANABI_H],
            output_file = joinpath(@__DIR__, "libhanabi_api.jl"),
            common_file = joinpath(@__DIR__, "libhanabi_common.jl"),
            header_wrapped = (root, current) -> root == current,
            clang_diagnostics = true)

run(wc)
