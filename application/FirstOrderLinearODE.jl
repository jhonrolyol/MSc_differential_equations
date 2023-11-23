
# Shorcuts: 
    # compile: shift + enter
# Load GraphRecipes for network graph
#using Pkg
#Pkg.add("GraphPlot")
#Pkg.add("LightGraphs")

using DifferentialEquations
using Plots

# Define the ODE
function linearODE!(du, u, p, t)
    du[1] = -0.5 * u[1] + 2 * t
end

# Initial condition
u0 = [1.0]

# Time span
tspan = (0.0, 2.0)

# Solve the ODE
prob = ODEProblem(linearODE!, u0, tspan)
sol = solve(prob, Tsit5(), reltol=1e-8, abstol=1e-8)

# Plot the solution
plot(sol, label="y(t)")
xlabel!("Time (t)")
ylabel!("Solution y(t)")
title!("First-Order Linear ODE")

# Save figure
savefig("figures/FirstOrderLinearODE.pdf")
