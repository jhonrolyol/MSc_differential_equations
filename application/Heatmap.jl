

# Shorcuts: 
    # compile: shift + enter
# Load GraphRecipes for network graph
#using Pkg
#Pkg.add("GraphPlot")
#Pkg.add("LightGraphs")


using Plots

# Generate data
data = rand(10, 10)

# Create heatmap
heatmap(data, xlabel="X-axis", 
        ylabel="Y-axis", title="Heatmap")

savefig("figures/Heatmap.pdf")


