clear, close all
% test DPGMM class
hyper.pseudo_observations = .03;
hyper.expected_mean = [0; 0];
hyper.degree_of_freedom = 4;
hyper.expected_covariance = [1 .1;.1 1];
alpha = 1;
K = 4;
N = 300;

x = gaussian_mixture(hyper,alpha,K,N);


dp = makeClustring('d',hyper,alpha,'InitialK',6,'MaxIterations',100, 'Plot', 'on');
figure(2)
result = dp.cluster(x);


