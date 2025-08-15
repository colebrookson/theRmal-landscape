# Thermal Landscape 

This notebook contains all the analysis thus far required and done to explore how disease spread may be modulated by components of the landscape such as resource availability and temperature. 

## Files:
   1. `01-co-location.nb`: transmission as a process of co-location on a weighted landscape 
   2. `02-patch-convergence.nb`: testing the use of a small variance to ensure that patches behave as we expect
   3. `03-distribution-expectations.nb`: transmission on a landscape with a known (& constant) distributions
   4. `04-landscape-r0.nb`: calculating a landscape-level R0 at the beginning of an infection with
   increasing heterogeneity 
      `04-01-patch-size-weights.nb`: aside on proving that large enough numbers of patches effectivelycfulfills the assumption that patch occupancy probabilities are uniformly distributed on the interval $(0, 2/n)$, for large enough $n$ their sum converges to 1 (satisfying their use as weights)
   5. `05-realistic-landscape.nb`: transmission on a realistic landscape and the impact of s vs t on driving 
   probability of spread
