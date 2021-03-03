using Clang.Generators
using Hanabi_jll

cd(@__DIR__)

options = load_options(joinpath(@__DIR__, "generator.toml"))

# ctx = create_context(Hanabi_jll.libhanabi_h, get_default_args(), options)
ctx = create_context(joinpath(@__DIR__, "libhanabi_patched.h"), get_default_args(), options)

build!(ctx)
