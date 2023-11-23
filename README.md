# Notes

## Description
This repository contains all my notes, presentations 
and applications of differential equations in JULIA.


## Examples

### Example 1: First-Order Linear ODE
Let's consider a simple first-order linear ODE:

$$
	\dfrac{dy}{dt} = -0.5y + 2t
$$

```julia

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

```

Below is the figure that results after solving the differential equation.

![]()


### Example 2: Second-Order Linear ODE
Now, let's solve a second-order linear ODE:

$$
	\dfrac{d^{2}y}{dt^{2}} + 2\dfrac{dy}{dt} + 2y = \sin{(t)}
$$

```julia


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

```

Below is the figure that results after solving the differential equation.

![]()

## How to Contribute
If you find errors or want to add more information, feel free
to contribute! You can open an issue or submit a pull request.

## Contact
- Email: [rolyordonezleon@gmail.com]
- Twitter: [@JhonRoly5]
