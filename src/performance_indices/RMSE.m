%% performance_indices.m
% This file implements some error estimates that we use 
% to validate our model.

function rmse = RMSE(y_actual, y_sim)
% This function computes the RMS Error between 
% our actual and simulated data.
rmse =  sqrt ( sum((y_actual-y_sim).^2)/length(y_actual) ) ; 
end
