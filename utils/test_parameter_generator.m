% Parameter file:
% Taking the values from Table 3 in the paper.
alpha = 1.947; 
gamma = -0.5;
delta = -1;
beta = 0.5;
mu = 0.001;
eta = 0.001;
n = 2;

% Loading the time-series data from STLouis
% and processing it for further use.
stl_data = importdata('STLFSI2.csv') 
stl_timestamps = stl_data.textdata(2:end, 1); 
stl_data = stl_data.data; 

save('test_parameters.mat');