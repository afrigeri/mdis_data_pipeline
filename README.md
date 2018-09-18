# Messenger's MDIS Data Pipeline using GIT

This is the application of git for a planetary data processing pipeline, we will be using USGS's ISIS3 and MDIS data.

We will be following the process suggested in the [MESSENGER MDIS Data Users' Workshop 2013](https://pds-imaging.jpl.nasa.gov/documentation/MESSENGER_MDIS_WorkShop_LPSC2103.pdf) by Kris Becker, Tammy Becker and Tren Hare of USGS Atrogeology Science Center.

# The problem

Remote Sensing data is usually processed on a Level base.  Level 0 (L0) is usually the lowest level, basically the data returned by the instrument's sensor.  Level 1 is the radiometrically calibrated version of the data. The data projection is returned into Level 2.  Level 3 is the place where Photometric correction occurs, where we are applying correction to the visible portion of the spectrum.  

When processing data we always want to experiment with different pipelines, or chain of processing.  Changing parameters of processing modules will affect the results.  Loosing track of what are the steps made to obtain intermediate results may lead to overdo processing steps. 

# Using Git for Planetary Data pipelines development

The idea is to use the branching capabilities of Git.  Every branch is an independent pipeline, which will bring different results.  If you are reading this document on Github, you can change branch and study the different pipeline used.

# MDIS Processing

Current branches are:

  * no photometric correction
  * photometric correction (n1) following USGS training flow
  * photometric corrrection n2: sligtly different processing
  

# Reference 

This work has been firstly presented on Sept 2018 EPSC 2018 in Berlin: [Using Git in Planetary Research](https://meetingorganizer.copernicus.org/EPSC2018/EPSC2018-1058-2.pdf)
  


