using BinaryProvider # requires BinaryProvider 0.3.0 or later

# Parse some basic command-line arguments
const verbose = "--verbose" in ARGS
const prefix = Prefix(get([a for a in ARGS if a != "--verbose"], 1, joinpath(@__DIR__, "usr")))
products = [
    LibraryProduct(prefix, ["libpyhanabi"], :libpyhanabi),
]

# Download binaries from hosted location
bin_prefix = "https://github.com/findmyway/HanabiBuilder/releases/download/v0.1.1"

# Listing of files generated by BinaryBuilder:
download_info = Dict(
    Linux(:aarch64, libc=:glibc) => ("$bin_prefix/Hanabi.v0.1.0.aarch64-linux-gnu.tar.gz", "1f59095981562f56f8bc4b877c438ca57712c6b70ad6702b5e7e42481db4b2cd"),
    Linux(:aarch64, libc=:musl) => ("$bin_prefix/Hanabi.v0.1.0.aarch64-linux-musl.tar.gz", "90f60feb8efd8eb5fd2eb3da026b2fc8e388a825bce71839332dd9b8662e0ead"),
    Linux(:armv7l, libc=:glibc, call_abi=:eabihf) => ("$bin_prefix/Hanabi.v0.1.0.arm-linux-gnueabihf.tar.gz", "c1030bb46934099ee7f1420610ffb10f5afb07c4083640dc853c8e44aa15cd36"),
    Linux(:armv7l, libc=:musl, call_abi=:eabihf) => ("$bin_prefix/Hanabi.v0.1.0.arm-linux-musleabihf.tar.gz", "7bacd913561cc7b7af20b45d2fc0a65708444bab31ea029b28f8f3d7544d1707"),
    Linux(:i686, libc=:glibc) => ("$bin_prefix/Hanabi.v0.1.0.i686-linux-gnu.tar.gz", "d4a5d5a3bf5231a56679d54fb5c088f622ce886a7712d3620fbeb76cbb3ad115"),
    Linux(:i686, libc=:musl) => ("$bin_prefix/Hanabi.v0.1.0.i686-linux-musl.tar.gz", "7e94e64f6aaced85764ddc71ba92571bda75bf59fc88f3c263be709ecd42787c"),
    Windows(:i686) => ("$bin_prefix/Hanabi.v0.1.0.i686-w64-mingw32.tar.gz", "19b0bb2cbf315b9768d2524e2b8418417ea61149573f703ec5cc3d088b0ea085"),
    Linux(:powerpc64le, libc=:glibc) => ("$bin_prefix/Hanabi.v0.1.0.powerpc64le-linux-gnu.tar.gz", "26b5d39e61960247a4c5b1ecbba379f63df396303f0cf2e2e869da89c1635b7a"),
    Linux(:x86_64, libc=:glibc) => ("$bin_prefix/Hanabi.v0.1.0.x86_64-linux-gnu.tar.gz", "ec745097f15f85d27c19213276bf535f6eb6733b88006fc349fafe6d7ece8b82"),
    Linux(:x86_64, libc=:musl) => ("$bin_prefix/Hanabi.v0.1.0.x86_64-linux-musl.tar.gz", "5fbb91ce49d07f179b2928fde3cf639d29496cce45b770c617b6931bc30b6ad5"),
    Windows(:x86_64) => ("$bin_prefix/Hanabi.v0.1.0.x86_64-w64-mingw32.tar.gz", "95cbd3693b4912d3ae74aff7ccc33e2b624d8663cbf5e5bf2471106f52a1994a"),
)

# Install unsatisfied or updated dependencies:
unsatisfied = any(!satisfied(p; verbose=verbose) for p in products)
dl_info = choose_download(download_info, platform_key_abi())
if dl_info === nothing && unsatisfied
    # If we don't have a compatible .tar.gz to download, complain.
    # Alternatively, you could attempt to install from a separate provider,
    # build from source or something even more ambitious here.
    error("Your platform (\"$(Sys.MACHINE)\", parsed as \"$(triplet(platform_key_abi()))\") is not supported by this package!")
end

# If we have a download, and we are unsatisfied (or the version we're
# trying to install is not itself installed) then load it up!
if unsatisfied || !isinstalled(dl_info...; prefix=prefix)
    # Download and install binaries
    install(dl_info...; prefix=prefix, force=true, verbose=verbose)
end

# Write out a deps.jl file that will contain mappings for our products
write_deps_file(joinpath(@__DIR__, "deps.jl"), products, verbose=verbose)
