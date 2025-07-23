data {
  int <lower = 0> N;
  int <lower = 0> y[N];
}

parameters {
  vector[N] mu; // Mean value
  real <lower = 0> phi; // Variation, previously sigma
  real ac; // Autocorrelation
}

transformed parameters {
// https://mc-stan.org/docs/2_21/functions-reference/nbalt.html
vector[N] mu_t; // Previously phi
for (i in 1:N){
  mu_t[i] = exp(mu[i]);
//phi[i] = exp(mu[i])^2/sigma;
//phi[i] = mu[i] + mu[i]^2/sigma;
//phi[i] = 1/(mu[i]^2*(sigma - mu[i]));
 }
}

model {
  mu[1] ~ lognormal(0, 1); // Prior on mu
  for (i in 2:N){
    mu[i] ~ normal(ac * mu[i - 1], phi); // Autoregressive part; previously (ac * mu[i - 1], sigma)
  }
  y ~ neg_binomial_2(mu_t, phi);
}

generated quantities {
  int <lower = 0> y_tilde[N];
  for (i in 1:N){
    y_tilde[i] = neg_binomial_2_rng(mu_t[i], phi);
  }
}
