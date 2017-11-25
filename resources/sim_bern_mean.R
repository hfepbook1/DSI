sim_bern_mean = function(n_samp, prob) {
  
  sim_data = tibble(
    y = rbinom(n_samp, 1, prob)
  )
  
  tibble(
    n = n_samp,
    samp_avg = mean(sim_data$y)
  )
}