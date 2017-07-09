#!/bin/bash
# Python libraries
export CONDA3_BIN=/opt/conda/bin
export CONDA2_BIN=/opt/conda/envs/python2/bin
export PIP3_BIN=/opt/conda/bin
export PIP2_BIN=/opt/conda/envs/python2/bin
export JUPYTER3_BIN=/opt/conda/bin
export JUPYTER2_BIN=/opt/conda/envs/python2/bin

sudo apt-get update
sudo apt-get install -y libgeos-dev
sudo apt-get clean
sudo rm -rf /var/lib/apt/lists/*

sudo $PIP3_BIN/pip3 install --upgrade pip
sudo $PIP3_BIN/pip3 install lightning-python pymongo psycopg2 \
      missingno plotly folium toyplot TextBlob geopandas mplleaflet cartodb \
      bubbles python-arango findspark epipy scikit-surprise ipynb graphviz cachey
sudo $PIP3_BIN/pip3 install dask[complete] smopy gmplot

sudo $CONDA3_BIN/conda install --yes -c anaconda mysql-connector-python=2.0.4
sudo $CONDA3_BIN/conda install --yes -c conda-forge bokeh=0.12.4
sudo $CONDA3_BIN/conda install --yes -c conda-forge geos osmnx gmaps
sudo $CONDA3_BIN/conda install --yes -c ioam holoviews=1.8.0 geoviews=1.3.0
sudo $CONDA3_BIN/conda install --yes xarray

sudo $CONDA3_BIN/conda install --yes -c conda-forge iris ipyleaflet pyshp pandas-datareader obspy basemap \
      basemap-data-hires elasticsearch
sudo $CONDA3_BIN/conda install --yes -c conda-forge jupyter_contrib_nbextensions jupyter_dashboards
sudo $CONDA3_BIN/conda install --yes -c blaze blaze
sudo $CONDA3_BIN/conda install --yes -c anaconda scrapy simplejson
sudo $CONDA3_BIN/conda install --yes -c anaconda biopython
sudo $CONDA3_BIN/conda install --yes -c bokeh datashader=0.5.0
sudo $CONDA3_BIN/conda install --yes -c https://conda.anaconda.org/biocore scikit-bio
sudo $JUPYTER3_BIN/jupyter nbextension enable --py --sys-prefix ipyleaflet
sudo $CONDA3_BIN/conda install --yes -c conda-forge jupyter_cms
sudo $CONDA3_BIN/conda remove --quiet --yes --force qt pyqt
sudo $CONDA3_BIN/conda clean -tipsy

source activate /opt/conda/envs/python2
sudo $PIP2_BIN/pip install --upgrade pip
sudo $PIP2_BIN/pip install lightning-python pymongo psycopg2 \
  missingno plotly folium toyplot TextBlob geopandas mplleaflet cartodb \
  bubbles python-arango findspark epipy scikit-surprise graphviz cachey
sudo $PIP2_BIN/pip install dask[complete] smopy gmplot
source deactivate

source activate /opt/conda/envs/python2
sudo $CONDA2_BIN/conda install --yes -c anaconda mysql-connector-python=2.0.4
sudo $CONDA2_BIN/conda install --yes -c conda-forge bokeh=0.12.4
sudo $CONDA2_BIN/conda install --yes -c conda-forge geos osmnx gmaps
sudo $CONDA2_BIN/conda install --yes -c ioam holoviews=1.8.0 geoviews=1.3.0
sudo $CONDA2_BIN/conda install --yes xarray
source deactivate

source activate /opt/conda/envs/python2
sudo $CONDA2_BIN/conda install --yes -c conda-forge iris ipyleaflet pyshp pandas-datareader obspy basemap \
      basemap-data-hires elasticsearch
sudo $CONDA2_BIN/conda install --yes -c conda-forge jupyter_contrib_nbextensions jupyter_dashboards
sudo $CONDA2_BIN/conda install --yes -c blaze blaze
sudo $CONDA2_BIN/conda install --yes -c anaconda scrapy simplejson
sudo $CONDA2_BIN/conda install --yes -c anaconda biopython
sudo $CONDA2_BIN/conda install --yes -c bokeh datashader=0.5.0
sudo $JUPYTER2_BIN/jupyter nbextension enable --py --sys-prefix ipyleaflet
sudo $CONDA2_BIN/conda install --yes -c conda-forge jupyter_cms
source deactivate

source activate /opt/conda/envs/python2
sudo $CONDA2_BIN/conda remove --quiet --yes --force qt pyqt
sudo $CONDA2_BIN/conda clean -tipsy
source deactivate
