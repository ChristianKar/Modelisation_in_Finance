%Simulink input
stl_data = importdata('STLFSI2.csv') ;
% stl_timestamps = stl_data.textdata(2:end, 1); 
stl_data = stl_data.data; 

save('input_simulink.mat');