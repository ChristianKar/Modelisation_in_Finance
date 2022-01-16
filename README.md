# modelisation-finance

This project is for our Modèlisation Project on Finance, where we implement Rulkov Maps to model St. Louis Fed Financial Stress Index data (STLFSI2) and analyse the map as a non-linear, discrete-time state-space model in its own right.

All code is neatly partitioned into the following folders: 

1. [./src](./src) hosts the MATLAB code for the main model. Here, you can find 
    
    - a working Rulkov Model in [./src/rulkov_model.m](./src/rulkov_model.m) 

    - a Rulkov model meant to model the time-series data in STLFSI2 at [./src/financial_rulkov_model.m](./src/financial_rulkov_model.m)

    - the code for the stability analysis as carried out in the report in [./src/stability_analysis.m](./src/stability_analysis.m). This relies on Performance indices defined in [./src/performance_indices/](./src/performance_indices/). 

2.  [./utils](./utils) contains the files [./utils/parameter_generator.m](./utils/parameter_generator.m) and [./utils/test_parameter_generator.m](./utils/test_parameter_generator.m). These abstract away the data loading into one modular step, so we don't have bloated code. 

3. [./simulink](./simulink) contains the SIMULINK model used for our study.
    
4. Similarly, [./plots](./plots) contains the plots generated during our analysis.
    
A copy of the [paper](./Bursts_and_Regularization_in_Financial_Markets_Det.pdf) we're modelling has also been maintained, so you can refer it at anytime and be sure which version we're using. 

We hope you have fun playing with our code! :)