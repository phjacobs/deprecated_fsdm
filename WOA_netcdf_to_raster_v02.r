## Get netcdf files of World Ocean Atlas 2013 v2 data:
## https://www.nodc.noaa.gov/OC5/woa13/woa13data.html
## Convert to raster bricks
## Make raster stack of all bricks
## This stack will be used in the 'dismo' SDMs

library(ncdf4)
library(raster)


# SST netcdfs
fn <- "https://data.nodc.noaa.gov/thredds/dodsC/woa/WOA13/DATAv2/temperature/netcdf/decav/1.00/woa13_decav_t00_01v2.nc"
ncfile <- nc_open(fn) 
tos_ANN <- brick(fn, varname = "t_an", level=1)
crs(tos_ANN) = "+init=EPSG:4326"

fn <- "https://data.nodc.noaa.gov/thredds/dodsC/woa/WOA13/DATAv2/temperature/netcdf/decav/1.00/woa13_decav_t13_01v2.nc"
ncfile <- nc_open(fn) 
tos_DJF <- brick(fn, varname = "t_an", level=1)
crs(tos_DJF) = "+init=EPSG:4326"

fn <- "https://data.nodc.noaa.gov/thredds/dodsC/woa/WOA13/DATAv2/temperature/netcdf/decav/1.00/woa13_decav_t14_01v2.nc"
ncfile <- nc_open(fn) 
tos_MAM <- brick(fn, varname = "t_an", level=1)
crs(tos_MAM) = "+init=EPSG:4326"

fn <- "https://data.nodc.noaa.gov/thredds/dodsC/woa/WOA13/DATAv2/temperature/netcdf/decav/1.00/woa13_decav_t15_01v2.nc"
ncfile <- nc_open(fn) 
tos_JJA <- brick(fn, varname = "t_an", level=1)
crs(tos_JJA) = "+init=EPSG:4326"

fn <- "https://data.nodc.noaa.gov/thredds/dodsC/woa/WOA13/DATAv2/temperature/netcdf/decav/1.00/woa13_decav_t16_01v2.nc"
ncfile <- nc_open(fn) 
tos_SON <- brick(fn, varname = "t_an", level=1)
crs(tos_SON) = "+init=EPSG:4326"

s1 <- stack(tos_ANN, tos_DJF, tos_MAM, tos_JJA, tos_SON)
names(s1) <- c("tos_ANN", "tos_DJF", "tos_MAM", "tos_JJA", "tos_SON")
s1


#Salinity netcdfs
fn <- "https://data.nodc.noaa.gov/thredds/dodsC/woa/WOA13/DATAv2/salinity/netcdf/decav/1.00/woa13_decav_s00_01v2.nc"
ncfile <- nc_open(fn) 
sos_ANN <- brick(fn, varname = "s_an", level=1)
crs(sos_ANN) = "+init=EPSG:4326"

fn <- "https://data.nodc.noaa.gov/thredds/dodsC/woa/WOA13/DATAv2/salinity/netcdf/decav/1.00/woa13_decav_s13_01v2.nc"
ncfile <- nc_open(fn) 
sos_DJF <- brick(fn, varname = "s_an", level=1)
crs(sos_DJF) = "+init=EPSG:4326"

fn <- "https://data.nodc.noaa.gov/thredds/dodsC/woa/WOA13/DATAv2/salinity/netcdf/decav/1.00/woa13_decav_s14_01v2.nc"
ncfile <- nc_open(fn) 
sos_MAM <- brick(fn, varname = "s_an", level=1)
crs(sos_MAM) = "+init=EPSG:4326"

fn <- "https://data.nodc.noaa.gov/thredds/dodsC/woa/WOA13/DATAv2/salinity/netcdf/decav/1.00/woa13_decav_s15_01v2.nc"
ncfile <- nc_open(fn) 
sos_JJA <- brick(fn, varname = "s_an", level=1)
crs(sos_JJA) = "+init=EPSG:4326"

fn <- "https://data.nodc.noaa.gov/thredds/dodsC/woa/WOA13/DATAv2/salinity/netcdf/decav/1.00/woa13_decav_s16_01v2.nc"
ncfile <- nc_open(fn) 
sos_SON <- brick(fn, varname = "s_an", level=1)
crs(sos_SON) = "+init=EPSG:4326"

s2 <- stack(sos_ANN, sos_DJF, sos_MAM, sos_JJA, sos_SON)
names(s2) <- c("sos_ANN", "sos_DJF", "sos_MAM", "sos_JJA", "sos_SON")
s2


# DO netcdfs
fn <- "https://data.nodc.noaa.gov/thredds/dodsC/woa/WOA13/DATA/oxygen/netcdf/all/1.00/woa13_all_o00_01.nc"
ncfile <- nc_open(fn) 
o2_ANN <- brick(fn, varname = "o_an", level=1)
crs(o2_ANN) = "+init=EPSG:4326"

fn <- "https://data.nodc.noaa.gov/thredds/dodsC/woa/WOA13/DATA/oxygen/netcdf/all/1.00/woa13_all_o13_01.nc"
ncfile <- nc_open(fn) 
o2_DJF <- brick(fn, varname = "o_an", level=1)
crs(o2_DJF) = "+init=EPSG:4326"

fn <- "https://data.nodc.noaa.gov/thredds/dodsC/woa/WOA13/DATA/oxygen/netcdf/all/1.00/woa13_all_o14_01.nc"
ncfile <- nc_open(fn) 
o2_MAM <- brick(fn, varname = "o_an", level=1)
crs(o2_MAM) = "+init=EPSG:4326"

fn <- "https://data.nodc.noaa.gov/thredds/dodsC/woa/WOA13/DATA/oxygen/netcdf/all/1.00/woa13_all_o15_01.nc"
ncfile <- nc_open(fn) 
o2_JJA <- brick(fn, varname = "o_an", level=1)
crs(o2_JJA) = "+init=EPSG:4326"

fn <- "https://data.nodc.noaa.gov/thredds/dodsC/woa/WOA13/DATA/oxygen/netcdf/all/1.00/woa13_all_o16_01.nc"
ncfile <- nc_open(fn) 
o2_SON <- brick(fn, varname = "o_an", level=1)
crs(o2_SON) = "+init=EPSG:4326"

s3 <- stack(o2_ANN, o2_DJF, o2_MAM, o2_JJA, o2_SON)
names(s3) <- c("o2_ANN", "o2_DJF", "o2_MAM", "o2_JJA", "o2_SON")
s3


# Nitrate netcdfs
fn <- "https://data.nodc.noaa.gov/thredds/dodsC/woa/WOA13/DATA/nitrate/netcdf/all/1.00/woa13_all_n00_01.nc"
ncfile <- nc_open(fn) 
no3_ANN <- brick(fn, varname = "n_an", level=1)
crs(no3_ANN) = "+init=EPSG:4326"

fn <- "https://data.nodc.noaa.gov/thredds/dodsC/woa/WOA13/DATA/nitrate/netcdf/all/1.00/woa13_all_n13_01.nc"
ncfile <- nc_open(fn) 
no3_DJF <- brick(fn, varname = "n_an", level=1)
crs(no3_DJF) = "+init=EPSG:4326"

fn <- "https://data.nodc.noaa.gov/thredds/dodsC/woa/WOA13/DATA/nitrate/netcdf/all/1.00/woa13_all_n14_01.nc"
ncfile <- nc_open(fn) 
no3_MAM <- brick(fn, varname = "n_an", level=1)
crs(no3_MAM) = "+init=EPSG:4326"

fn <- "https://data.nodc.noaa.gov/thredds/dodsC/woa/WOA13/DATA/nitrate/netcdf/all/1.00/woa13_all_n15_01.nc"
ncfile <- nc_open(fn) 
no3_JJA <- brick(fn, varname = "n_an", level=1)
crs(no3_JJA) = "+init=EPSG:4326"

fn <- "https://data.nodc.noaa.gov/thredds/dodsC/woa/WOA13/DATA/nitrate/netcdf/all/1.00/woa13_all_n16_01.nc"
ncfile <- nc_open(fn) 
no3_SON <- brick(fn, varname = "n_an", level=1)
crs(no3_SON) = "+init=EPSG:4326"

s4 <- stack(no3_ANN, no3_DJF, no3_MAM, no3_JJA, no3_SON)
names(s4) <- c("no3_ANN", "no3_DJF", "no3_MAM", "no3_JJA", "no3_SON")
s4


# Phosphate netcdfs
fn <- "https://data.nodc.noaa.gov/thredds/dodsC/woa/WOA13/DATA/phosphate/netcdf/all/1.00/woa13_all_p00_01.nc"
ncfile <- nc_open(fn) 
po4_ANN <- brick(fn, varname = "p_an", level=1)
crs(po4_ANN) = "+init=EPSG:4326"

fn <- "https://data.nodc.noaa.gov/thredds/dodsC/woa/WOA13/DATA/phosphate/netcdf/all/1.00/woa13_all_p13_01.nc"
ncfile <- nc_open(fn) 
po4_DJF <- brick(fn, varname = "p_an", level=1)
crs(po4_DJF) = "+init=EPSG:4326"

fn <- "https://data.nodc.noaa.gov/thredds/dodsC/woa/WOA13/DATA/phosphate/netcdf/all/1.00/woa13_all_p14_01.nc"
ncfile <- nc_open(fn) 
po4_MAM <- brick(fn, varname = "p_an", level=1)
crs(po4_MAM) = "+init=EPSG:4326"

fn <- "https://data.nodc.noaa.gov/thredds/dodsC/woa/WOA13/DATA/phosphate/netcdf/all/1.00/woa13_all_p15_01.nc"
ncfile <- nc_open(fn) 
po4_JJA <- brick(fn, varname = "p_an", level=1)
crs(po4_JJA) = "+init=EPSG:4326"

fn <- "https://data.nodc.noaa.gov/thredds/dodsC/woa/WOA13/DATA/phosphate/netcdf/all/1.00/woa13_all_p16_01.nc"
ncfile <- nc_open(fn) 
po4_SON <- brick(fn, varname = "p_an", level=1)
crs(po4_SON) = "+init=EPSG:4326"

s5 <- stack(po4_ANN, po4_DJF, po4_MAM, po4_JJA, po4_SON)
names(s5) <- c("po4_ANN", "po4_DJF", "po4_MAM", "po4_JJA", "po4_SON")
s5


# Silicate netcdfs
fn <- "https://data.nodc.noaa.gov/thredds/dodsC/woa/WOA13/DATA/silicate/netcdf/all/1.00/woa13_all_i00_01.nc"
ncfile <- nc_open(fn) 
sio3_ANN <- brick(fn, varname = "i_an", level=1)
crs(sio3_ANN) = "+init=EPSG:4326"

fn <- "https://data.nodc.noaa.gov/thredds/dodsC/woa/WOA13/DATA/silicate/netcdf/all/1.00/woa13_all_i13_01.nc"
ncfile <- nc_open(fn) 
sio3_DJF <- brick(fn, varname = "i_an", level=1)
crs(sio3_DJF) = "+init=EPSG:4326"

fn <- "https://data.nodc.noaa.gov/thredds/dodsC/woa/WOA13/DATA/silicate/netcdf/all/1.00/woa13_all_i14_01.nc"
ncfile <- nc_open(fn) 
sio3_MAM <- brick(fn, varname = "i_an", level=1)
crs(sio3_MAM) = "+init=EPSG:4326"

fn <- "https://data.nodc.noaa.gov/thredds/dodsC/woa/WOA13/DATA/silicate/netcdf/all/1.00/woa13_all_i15_01.nc"
ncfile <- nc_open(fn) 
sio3_JJA <- brick(fn, varname = "i_an", level=1)
crs(sio3_JJA) = "+init=EPSG:4326"

fn <- "https://data.nodc.noaa.gov/thredds/dodsC/woa/WOA13/DATA/silicate/netcdf/all/1.00/woa13_all_i16_01.nc"
ncfile <- nc_open(fn) 
sio3_SON <- brick(fn, varname = "i_an", level=1)
crs(sio3_SON) = "+init=EPSG:4326"

s6 <- stack(sio3_ANN, sio3_DJF, sio3_MAM, sio3_JJA, sio3_SON)
names(s6) <- c("sio3_ANN", "sio3_DJF", "sio3_MAM", "sio3_JJA", "sio3_SON")
s6


# Rasterstack of all raster brick stacks
superstack <- stack(s1,s2,s3,s4,s5,s6)
superstack