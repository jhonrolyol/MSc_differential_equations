
#using Pkg
#Pkg.add("Plots")
#Pkg.add("DifferentialEquations")

using DifferentialEquations
using Plots
# Define the ODE
function secondOrderODE!(du, u, p, t)
    du[1] = u[2]         # Example: du/dt = u'
    du[2] = -0.1u[2] - u[1]  # Example: d^2u/dt^2 = -0.1u' - u
end
# Initial condition
u0 = [1.0, 0.0]
# Time span
tspan = (0.0, 10.0)
# Solve the ODE
prob = ODEProblem(secondOrderODE!, u0, tspan)
sol = solve(prob, Tsit5())
# Plot the solution
plot(sol, label=["u(t)" "u'(t)"], 
    xlabel="Time", title="Example 2: Second-Order ODE")
# Save figures
savefig("figures/secondOrderODE.pdf")










