
#using Pkg
#Pkg.add("Plots")
#Pkg.add("DifferentialEquations")


using DifferentialEquations
using Plots
# Define the ODE
function systemODE!(du, u, p, t)
    du[1] = -0.1u[1] + 0.2u[2]   # Example: du1/dt = -0.1u1 + 0.2u2
    du[2] = -0.2u[1] - 0.1u[2]   # Example: du2/dt = -0.2u1 - 0.1u2
end
# Initial condition
u0 = [1.0, 0.0]
# Time span
tspan = (0.0, 10.0)
# Solve the ODE
prob = ODEProblem(systemODE!, u0, tspan)
sol = solve(prob, Tsit5())
# Plot the solution
plot(sol, label=["u1(t)" "u2(t)"], 
    xlabel="Time", title="Example 3: System of ODEs")
# Save figure 
savefig("figures/SystemofODEs.pdf")





