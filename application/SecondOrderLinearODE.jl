
# Shorcuts: 
    # compile: shift + enter
# Load GraphRecipes for network graph
#using Pkg
#Pkg.add("GraphPlot")
#Pkg.add("LightGraphs")

using DifferentialEquations
using Plots

# Define the ODE
function secondOrderLinearODE!(du, u, p, t)
    du[1] = u[2]
    du[2] = -2 * u[2] - 2 * u[1] + sin(t)
end

# Initial conditions
u0 = [0.0, 0.0]

# Time span
tspan = (0.0, 10.0)

# Solve the ODE
prob = ODEProblem(secondOrderLinearODE!, u0, tspan)
sol = solve(prob, Tsit5(), reltol=1e-8, abstol=1e-8)

# Plot the solution
plot(sol, label=["y(t)" "y'(t)"])
xlabel!("Time (t)")
ylabel!("Solution y(t) and y'(t)")
title!("Second-Order Linear ODE")


# Save figure
savefig("figures/SecondOrderLinearODE.pdf")

