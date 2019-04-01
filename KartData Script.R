## Forsøke å tegne norgeskart og fargelegge etter verdier
## https://cran.r-project.org/doc/contrib/intro-spatial-rl.pdf
## https://www.jessesadler.com/post/gis-with-r-intro/
## https://kartkatalog.geonorge.no/metadata/uuid/041f1e6e-bdbc-4091-b48f-8a5990f3cc5b
## https://mgimond.github.io/Spatial/data-manipulation-in-r.html !!!


library(tidyverse)
library(sf)
library(sp)
library(rgdal)
library(raster)
library(geojsonR)
library(geojsonio)

## Prøve å lese inn kart data først

test <- readOGR(dsn = "~/KartData/BasisdataNorge.geojson", layer = "OGRGeoJSON")
kart <- shapefile("~/KartData/Norway_shapefile/no_1km.shp")
shape <- readOGR(dsn = "~/KartData/Norway_shapefile/no_1km.shp", layer = "SHAPEFILE")
shape <- read_sf(dsn = "~/KartData/Norway_shapefile/no_1km.shp", layer = "SHAPEFILE")


polygons <- readOGR("BasisdataNorge.geojson", "OGRGeoJSON", require_geomType="wkbPolygon")


file <- system.file("examples", "BasisdataNorge.geojson", package = "geojsonio")

file.exists("~")
list.files("~/KartData")
