%% proj_finance.m - Cours Modelisation - Saclay, 2021-22.
% This file uses the Rulkov Map as defined in Eqn. 4 of the paper to model
% the stock market data of STLFSI2, in an attempt to recreate the graphs in
% Figure 3 and 4.

%% System parameters and calls; 
rng(0) % Seeds the random number generator
clear all;  %#ok<CLALL>
clc; 

%% Initialising our Rulkov vectors
t_max = 100; 
x = zeros(t_max+1, 1); 
y = zeros(t_max+1, 1); 

% Parameters: 
load('parameters')

% Initial Conditions 
x(1) = 0 
y(1) = 0; 
%% 
% Modelling a Rulkov map needs functions 
f = @(n, t, x) alpha ./ (1 + x(t).^n)
