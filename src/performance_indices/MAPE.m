function mape = MAPE(y_actual, y_sim)
% This function computes the Mean Actual Percentage Error 
% between our actual and simulated data.
mape = sum ( abs(y_actual - y_sim)./abs(y_sim) ) / length(y_sim); 
end 
