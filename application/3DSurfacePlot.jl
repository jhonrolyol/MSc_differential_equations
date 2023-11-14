
# Shorcuts: 
    # compile: shift + enter
    
# Load GraphRecipes for network graph
#using Pkg
#Pkg.add("GraphPlot")
#Pkg.add("LightGraphs")


using Plots
# Generate data
x = y = range(-5, stop=5, length=50)
f(x, y) = sin(sqrt(x^2 + y^2))
# Create 3D surface plot
plot(x, y, f, st=:surface, 
    xlabel="X-axis", ylabel="Y-axis",
    zlabel="Z-axis", title="3D Surface Plot")

savefig("figures/3DSurfacePlot.pdf")


