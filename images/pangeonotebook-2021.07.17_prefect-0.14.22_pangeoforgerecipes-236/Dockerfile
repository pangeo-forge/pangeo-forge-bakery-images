FROM pangeo/pangeo-notebook:2021.07.17

COPY ./requirements.txt requirements.txt

RUN conda run -n notebook pip uninstall -y -r requirements.txt

RUN conda run -n notebook pip install -I -r requirements.txt

RUN conda run -n notebook pip install git+https://github.com/pangeo-forge/pangeo-forge-recipes.git@refs/pull/236/head

RUN conda run -n notebook pip install git+https://github.com/fsspec/adlfs.git@refs/pull/288/head
 

