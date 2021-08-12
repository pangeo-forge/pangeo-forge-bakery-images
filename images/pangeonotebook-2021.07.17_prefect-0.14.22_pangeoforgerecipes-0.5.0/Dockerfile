FROM pangeo/pangeo-notebook:2021.07.17

COPY ./requirements.txt requirements.txt

RUN conda run -n notebook pip uninstall -y -r requirements.txt

RUN conda run -n notebook pip install -I -r requirements.txt

RUN conda run -n notebook pip uninstall -y fsspec

RUN conda run -n notebook pip install -I git+git://github.com/martindurant/filesystem_spec@hanging#egg=fsspec
