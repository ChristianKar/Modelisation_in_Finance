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
%delta = ; 
%% 
% Modelling a Rulkov m% Determined by the number of timestamps/data that we have
f = @(t, x) alpha ./ (1 + x(t).^n);  
for t=1:t_max% plot(f(1:t_max,x))
    x(t+1) = f(t, x) + gamma*y(t) + stl_data(t); %stl_data(t)=delta; 
    y(t+1) = beta * y(t) - mu * x(t) + eta(); % eta*randn() for the second model
end

hold on; 
plot(x);  
plot(stl_data); 
legend("x", "STL")
grid on ; 