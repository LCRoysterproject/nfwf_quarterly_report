## To use this repository:  
1. Run the script-> `data_script` using a computer connected to the Oyster Project MySQL database. This script will output `wq.csv` and `lab.csv` in the data folder.  
2. Run the script -> `dailyFuctions` to create functions that will be used in the next scripts.  
3. Run script -> `sal_plot`, `saltemp_plot`, and `temp_plot`. These scripts will create the quarterly report figures. You can edit the site locations that appear in the figures in the code itself.  
4. The figures can be viewed in fig folder.  
  
### Folder Definition:  
data- This folder contains continous and discrete water quality data. There is also a file for the sensor locations, `wq_point`, and river discharge data,`dis.rds`.     
fig- This folder contains the figures for the quarterly report. 
landing_report - This folder contains data, figures, and script for landings figures used for reporting. The folder data includes different variations of the landings data downloaded from FWC online. 
script- This folder contains all the scripts used to create the quartely report figures. This folder does not contain the .rmd what will generate the whole report.  
text- This folder contains the figure caption text.   
