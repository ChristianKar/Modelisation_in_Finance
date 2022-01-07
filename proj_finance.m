%% proj_finance.m - Cours Modelisation - Saclay, 2021-22.
% This file uses the Rulkov Map as defined in Eqn. 4 of the paper to model
% the stock market data of STLFSI2, in an attempt to recreate the graphs in
% Figure 3 and 4.

%% System parameters and calls; 
% rng(0) % Seeds the random number generator
clear all;  %#ok<CLALL>
clc; 

%% Initialising our Rulkov vectors
% Parameters: 
load('parameters.mat'); 

t_max = length(stl_data); 

y = zeros(t_max+1, 1); 
x = zeros(t_max+1, 1); 

% Initial Conditions 
x(1) = stl_data(1);
y(1) = stl_data(1);
delta = -1 + (1+1)*rand(size(stl_data)); 
%% 
% Modelling a Rulkov m% Determined by the number of timestamps/data that we have
f = @(t, x) alpha ./ (1 + x(t).^n); 
n = 20; 
for t=1:t_max
    x(t+1) = f(t, x) + gamma*y(t) + delta(t); 
%x(t+1) = alpha / (1 + x(t)^n) + gamma*y(t) + delta; 
%     disp(x(t+1))
    y(t+1) = beta * y(t) - mu * x(t) + eta; 
end

hold on; 
plot(y); plot(stl_data); 
% plot(f(1:t_max,x))
legend("y","STL")
grid on ; 