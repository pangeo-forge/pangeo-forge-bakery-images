FROM pangeo/pangeo-notebook:2021.12.02

RUN mamba install -n notebook -c conda-forge -y pangeo-forge-recipes==0.8.3

RUN mamba install -n notebook -c conda-forge -y "prefect[aws, google, kubernetes]==0.14.22"
