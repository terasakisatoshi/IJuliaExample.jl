using Conda; Conda.add("jupyter")
using Pkg; 
using IJulia

run(`julia run.jl`)
