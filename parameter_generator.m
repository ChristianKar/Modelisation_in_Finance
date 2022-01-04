% Parameter file:
% Taking the values from Table 3 in the paper.
alpha = 0.1946; 
gamma = 0.9251;
delta = -0.1512;
beta = 0.5770;
mu = 0.4167;
eta = 0.0003;
n = 2;

% Loading the time-series data from STLouis
% and processing it for further use.
stl_data = importdata('STLFSI2.csv') 
stl_timestamps = stl_data.textdata(2:end, 1); 
stl_data = stl_data.data; 

save('parameters.mat');