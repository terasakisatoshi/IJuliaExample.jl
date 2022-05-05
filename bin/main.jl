using Conda; Conda.add("jupyter")
using Pkg; 
using IJulia

a = abspath(realpath(joinpath(@__DIR__, "..")))
@info a 
cd(a)
run(`julia --project=. run.jl`)
