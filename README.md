# Project_Exdata_Plotting1
R code and graphics for project of the course: Exploratory Data Analysis

The repo contains 9 files: 4 png files containing the required graphics and 5 R files.

R Files Contents:

* *Get_data_function.R*: It contains the function called **read(folder,namefile)** that gets and formats the data. Their two arguments has the following mean:

    **folder**: Directory containing the file household_power_consumption.txt

    **namefile**: Name of the file. 

    If you don't specify anything the function asummes the following default parameters:

    **folder=./data**

    **namefile=household_power_consumption.txt**
    The output file is called **consumption_data_def**. This name'll be used in the four scripts that create each graphic.
* *Plot1.R*: Script that generate the first graphic.
* *Plot2.R*: Script that generate the second graphic.
* *Plot3.R*: Script that generate the third graphic.
* *Plot4.R*: Script that generate the fourth graphic.

PNG Files Contents:
* *Plot1.PNG*: Histogram of global_active_power.
* *Plot2.PNG*: Evolution of global_active_power through time. It's important to mention that the labels of the x-axis are in spanish due to my config.
* *Plot3.PNG*: Evolution of sub_metering_1,sub_metering_2,sub_metering_3 through time. It's important to mention that the labels of the x-axis are in spanish due to my config.
* *Plot4.PNG*: Multiple graphics.
