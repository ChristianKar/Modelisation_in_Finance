function nrmse = NRMSE(y_actual, y_sim)
% This function computes the Normalised RMS Error between 
% our actual and simulated data.
nrmse = RMSE(y_actual, y_sim)/(max(y_sim) - min(y_sim)); 
end

