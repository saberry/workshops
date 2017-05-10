### RStanARM Examples ###

library(rstanarm); library(ggplot2); library(dplyr); library(tidyr)

### Linear Model ###

slim = lm(mpg ~ cyl + wt + disp, data = mtcars)

slim

stanLM = stan_lm(mpg ~ cyl + wt + disp, data = mtcars,
                 prior = R2(what = "mode", location = .75), cores = 3)

stanLM

# The Bayesian point estimates ("Median") are pretty close to what we got from
# our standard linear model. The "log-fit_ratio" is low, so we do not need to
# worry about our model being overfit with the specified prior. The specified
# prior (R2 = .75) goes in for all parameter estimates.

# Let's change up our prior estimation.

stanLMCauchyPrior = stan_glm(mpg ~ cyl + wt + disp, data = mtcars,
                             family = gaussian(), prior = cauchy(),
                             prior_intercept = cauchy(), cores = 3)

stanLMCauchyPrior

### GLM ###

### POLR ###

