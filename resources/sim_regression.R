sim_regression = function(n_samp, beta0, beta1) {
  
  sim_data = tibble(
    x = rnorm(n_samp, mean = 1, sd = 1),
    y = beta0 + beta1 * x + rnorm(n_samp, 0, 1)
  )
  
  ls_fit = lm(y ~ x, data = sim_data) %>% 
    tidy()
  
  tibble(
    n = n_samp,
    beta0_hat = pull(ls_fit, estimate)[1],
    beta1_hat = pull(ls_fit, estimate)[2]
  )
}