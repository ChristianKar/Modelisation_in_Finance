% Parameter file:
% Taking the values from Table 3 in the paper.
alpha = 4.2;%1.947; 
gamma = -0.5;
delta = -0.5;
beta =1;
mu = 0.003;
eta = 0.01;
n = 3;

% Loading the time-series data from STLouis
% and processing it for further use.
stl_data = importdata('STLFSI2.csv') 
stl_timestamps = stl_data.textdata(2:end, 1); 
stl_data = stl_data.data; 

save('test_parameters.mat');