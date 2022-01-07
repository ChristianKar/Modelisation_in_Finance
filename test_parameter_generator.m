% Parameter file:
% Taking the values from Table 3 in the paper.
alpha = 1; 
gamma = 0.5;
delta = 1;
beta = 0.5;
mu = 1;
eta = 1;
n = 2;

% Loading the time-series data from STLouis
% and processing it for further use.
stl_data = importdata('STLFSI2.csv') 
stl_timestamps = stl_data.textdata(2:end, 1); 
stl_data = stl_data.data; 

save('test_parameters.mat');