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
load('parameters'); 

% Determined by the number of timestamps/data that we have. 
t_max = length(stl_data); 

x = zeros(t_max+1, 1); 
y = zeros(t_max+1, 1); 

% Initial Conditions 
x(1) = stl_data(1); 
y(1) = stl_data(1); 
%% 
% Modelling a Rulkov map needs functions 
f = @(t, x) alpha ./ (1 + x(t).^n); 
for t=1:t_max
    x(t+1) = f(t, x) + gamma*y(t) + delta; 
    disp(x(t+1))
    y(t+1) = beta * y(t) - mu * x(t) + eta; 
end

hold on; 
plot(y)
plot(x)
legend("Y", "X")
grid on ; 