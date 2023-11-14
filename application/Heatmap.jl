

# Shorcuts: 
    # compile: shift + enter

using Plots

# Generate data
data = rand(10, 10)

# Create heatmap
heatmap(data, xlabel="X-axis", 
        ylabel="Y-axis", title="Heatmap")

savefig("figures/Heatmap.pdf")


