
# Shorcuts: 
    # compile: shift + enter

# Load GraphRecipes for network graph
using Pkg
Pkg.add("GraphRecipes")
Pkg.add("LightGraphs")

using LightGraphs
using GraphPlot
using Plots

# Generate data for a simple network graph
nodes = ["A", "B", "C", "D", "E"]
edges = [("A", "B"), ("B", "C"), ("C", "D"), ("D", "E"), ("E", "A")]

# Create a simple graph
g = SimpleGraph(length(nodes))
for (src, dest) in edges
    add_edge!(g, findfirst(x -> x == src, nodes), findfirst(x -> x == dest, nodes))
end

# Get layout for the nodes
layout = circular_layout(g)

# Plot the graph
plot(g, layout=layout, nodelabel=nodes, 
    markersize=0.1, arrow=true, line_z=1, 
    line_c=:black, node_weights=[1, 1, 1, 1, 1], legend=false)

savefig("figures/NetworkGraph.pdf")
