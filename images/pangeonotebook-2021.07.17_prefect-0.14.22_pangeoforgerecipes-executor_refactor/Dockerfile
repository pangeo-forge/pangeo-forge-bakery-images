FROM pangeo/pangeo-notebook:2021.07.17

COPY ./requirements.txt requirements.txt

RUN conda run -n notebook pip uninstall -y -r requirements.txt

RUN conda run -n notebook pip install -I -r requirements.txt
RUN conda run -n notebook pip install git+https://github.com/pangeo-forge/pangeo-forge-recipes@e706a663a74e315217168acb5ec5a62bfc098f4a
