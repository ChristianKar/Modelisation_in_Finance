% Stability analysis
clc; 
clear all;
%% Loading Data
% Let's get the parameters for the case highlighted in the paper.
load('parameters.mat'); 

%% Equilibrium Points
% This creates the polynomial whose roots are the equilibrium points of our
% system. The system being non-linear did not make this easy, dammit !
b = 1/(1-beta);
coeffs = [(1- gamma*mu*b), (1 - gamma*eta*b), (1+gamma*mu*b), (alpha+delta-gamma*eta*b)]
eq_points = roots(coeffs)

%% Evaluating Stability of Eq. points 
% Now we need to find the eigenvalues associated to the Jacobian 
% evaluated at each of these points.
eigenvalues = zeros(length(eq_points), 3);  
for idx = 1:length(eq_points)
    eq_point = eq_points(idx);
    fprintf("For eq_point: %f\n", eq_point); 
    big_term = 2*eq_point*alpha/(1+eq_point^2); 
    Jac_coeffs = [1, -beta-big_term, - alpha*beta*big_term +gamma*mu]; 
    eigenvalues(idx, :) = roots(Jac_coeffs); 
    fprintf("We have eigenvalues: [%f, %f, %f] \n", eigenvalues(idx, :));
end

%% Plotting Eq. points
% Let's plot what we've got! Seeing each point will show us if what kind of
% stability we're dealing with here.
hold on;
plot(real(eigenvalues(1, :)), imag(eigenvalues(1, :)), 'g*', ...
     real(eigenvalues(2, :)), imag(eigenvalues(2, :)), 'r*', ...
     real(eigenvalues(3, :)), imag(eigenvalues(3, :)), 'b*')
plot([0,0], [-1, 1], 'black', [-1, 1], [0,0], 'black')  % Plotting the axes
legend(string(eq_points))
grid on; 
title('Eigenvalues of the Jacobian')
subtitle('Evaluated at the equilibrium points')