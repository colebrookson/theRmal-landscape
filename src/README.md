# Thermal Landscape 

This notebook contains all the analysis thus far required and done to explore how disease spread may be modulated by components of the landscape such as resource availability and temperature. 

## Table of Contents:
   1. `01-co-location.nb`: transmission as a process of co-location on a weighted landscape 
   2. `02-constant-dist.nb`: transmission on a landscape with a known (constant) distribution
   3. `03-uniform-dist.nb`: transmission on a landscape with a known (uniform) distribution
   4. `04-exp-dist.nb`: transmission on a landscape with a known (exponential) distribution
   5. `05-landscape-r0.nb`: calculating a landscape-level R0 at the beginning of an infection with
   increasing heterogeneity 
      `05-01-patch-size-weights.nb`: aside on proving that large enough numbers of patches effectivelycfulfills the assumption that patch occupancy probabilities are uniformly distributed on the interval $(0, 2/n)$, for large enough $n$ their sum converges to 1 (satisfying their use as weights)
   6. `06-realistic-landscape.nb`: transmission on a realistic landscape and the impact of s vs t on driving 
   probability of spread
