%% proj_finance.m - Cours Modelisation - Saclay, 2021-22.
% This file uses the Rulkov Map as defined in Eqn. 4 of the paper to model
% the stock market data of STLFSI2, in an attempt to recreate the graphs in
% Figure 3 and 4.

%% System parameters and calls; 
% rng(0) % Seeds the random number generator
clear all;  %#ok<CLALL>
clc; 
% To automatically regenerate my data during modification. 
regen_data = true 
if regen_data == true
    run ../utils/test_parameter_generator.m
end 
%% Initialising our Rulkov vectors
% Parameters: 
load('../utils/test_parameters.mat'); 

t_max = 500; %length(stl_data); 

y = zeros(t_max+1, 1); 
x = zeros(t_max+1, 1); 

% Initial Conditions 
x(1) = stl_data(1);
y(1) = stl_data(1);
%0.2felta = ; 
%% 
% Modelling a Rulkov m% Determined by the number of timestamps/data that we have
f = @(t, x) alpha ./ (1 + x(t).^n);
for t=1:t_max
    x(t+1) = f(t, x) + gamma*y(t) + delta; %stl_data(t)=delta; 
    y(t+1) = beta * y(t) - mu * x(t) + eta(); % eta*randn() for the second model
end

hold on; 
time = 1:(t_max+1);
plot(time, x(time));
plot(time, y(time));
legend("x_t","y_t", 'Location', 'northeast', 'fontsize', 16)
title('Chaotic Rulkov Map: Dynamics')
annot_str = sprintf(' α=%0.2f', ...
    alpha) ;
dim = [.2 .5 .4 .4];
annotation('textbox',dim,'String',annot_str,'FitBoxToText','on', 'fontsize', 19);
grid on ; 

