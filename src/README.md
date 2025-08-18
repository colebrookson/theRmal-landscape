# Thermal Landscape 

This notebook contains all the analysis thus far required and done to explore how disease spread may be modulated by components of the landscape such as resource availability and temperature. 

## Files:
   1. `01-co-location.nb`: transmission as a process of co-location on a weighted landscape 
   2. `02-patch-convergence.nb`: testing the use of a small variance to ensure that patches behave as we expect
   3. `03-distribution-expectations.nb`: transmission on a landscape with a known (& constant) distributions, and show how closed-form solutions are found for the exxpressions of the expected values
   4. `04-r0-simulations.nb`: how does a landscape-level R0 value affect things like time to extinction, and calculate how a simulated versus theoretical R0 compare across time-to-extinction, and across additional heterogeneity (q) 
      `04-01-phi-simulations.nb`: show the same as the R0 results but calculating a value of phi instead.
   6. `05-realistic-landscape.nb`: transmission on a realistic landscape and the impact of s vs t on driving 
   probability of spread
