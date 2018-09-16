# Messenger's MDIS Data Pipeline using GIT

This is the application of git for a planetary data processing pipeline, we will be using USGS's ISIS3 and MDIS data.

We will be following the process suggested in the [MESSENGER MDIS Data Users' Workshop 2013](https://pds-imaging.jpl.nasa.gov/documentation/MESSENGER_MDIS_WorkShop_LPSC2103.pdf) by Kris Becker, Tammy Becker and Tren Hare of USGS Atrogeology Science Center.

# Background

Remote Sensing data is usually processed on a Level base.  Level 0 (L0) is usually the lowest level, basically the data returned by the instrument's sensor.  Level 1 is the radiometrically calibrated version of the data. The data projection is returned into Level 2.  Level 3 is the place where Photometric correction occurs, where we are applying correction to the visible portion of the spectrum.  


## Raditladi basin mosaic with Hapke correction

We have applied the Hapke-Henyey-Greenstein photometric mode.  
 * Hapke roughness component Theta = 17.76662946
 * Hapke single scattering albedo component: Wh = 0.27808114
 * Hapke Henyey Greenstein coefficient Hg1 = 0.227774899
 * Hapke Henyey Greenstein coefficient Hg2 = 0.714203968
 * Hapke opposition surge component Hh = 0.075 
 * Hapke opposition surge component B0 = 2.3 


![](processing/RaditladiBasin.png)
