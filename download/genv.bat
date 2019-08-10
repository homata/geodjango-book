@echo off

set POSTGRES_ROOT=C:¥Program Files\PostgreSQL\9.6
set OSGEO4W_ROOT=C:¥OSGeo4W64
set GDAL_LIBRARY_PATH=C:¥OSGeo4W64\bin

set GDAL_DATA=%OSGEO4W_ROOT%¥share¥gdal
set PROJ_LIB=%OSGEO4W_ROOT%¥share¥proj
set PATH=%OSGEO4W_ROOT%\bin;%POSTGRES_ROOT%\bin;%PATH%;
