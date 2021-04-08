This is the `script` folder. This folder contains:  
  
- `data_script.R`	- a data script used to pull wq observations from MySQL, and saves the output in the data folder, this script also processed the data, please update this script from the `lcr_project_master_data` repository prior to running the script  
- `oys_landings_figures.r`	- this script creates figures of oyster landings per FL region 
- `windrose.R` - a script which can create a wind rose based on specified dates
- `discharge_heatmaps.R` - script to create heat maps based on the API river disharge information pulled from `waterData` package
- `daily_functions.R` - this functions summarise hourly data (v) to give daily mean, max or min
