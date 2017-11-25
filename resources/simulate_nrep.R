simulate_nrep = function(n_rep, n_samp, beta0, beta1) {
  
  rerun(n_rep, sim_regression(n_samp, beta0, beta1)) %>% 
    bind_rows()
  
}
