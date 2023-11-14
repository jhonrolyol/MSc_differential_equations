
#using Pkg
#Pkg.add("Plots")
#Pkg.add("DifferentialEquations")

using DifferentialEquations
using Plots
# Define the ODE
function simpleODE!(du, u, p, t)
    du[1] = -0.1u[1]  # Example: du/dt = -0.1u
end
# Initial condition
u0 = [1.0]
# Time span
tspan = (0.0, 10.0)
# Solve the ODE
prob = ODEProblem(simpleODE!, u0, tspan)
sol = solve(prob, Tsit5())
# Plot the solution
plot(sol, label="u(t)", xlabel="Time", 
    ylabel="u(t)", title="Example 1: First-Order ODE")
# Save figures
savefig("figures/SimpleFirstOrderODE.pdf")

