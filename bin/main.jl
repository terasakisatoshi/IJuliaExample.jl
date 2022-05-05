using Conda; Conda.add("jupyter")
ENV["JUPYTER"]=""
ENV["PYTHON"]=""
using Pkg; Pkg.build("IJulia")

@info pwd()

a = abspath(realpath(joinpath(@__DIR__, "..")))
@info a 
cd(a)
run(`julia --project=. run.jl`)
