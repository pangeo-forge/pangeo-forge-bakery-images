# pangeo-forge Bakery Images ☁️🍞

This repository serves as the provider of the worker Docker image definitions used by `pangeo-forge` Bakeries and their dask clusters

All images are based on the `pangeo-notebook` image found [here](https://github.com/pangeo-data/pangeo-docker-images)

# Contents

* [📸 Images - Available image tags](#available-image-tags)
* [📸 Images - Usage](#usage)
* [🧑‍💻 Development - Requirements](#requirements)

# Images

## Available image tags

The following image tags for `bakery-worker` are currently available on the `pangeo-forge` DockerHub:

| Image Tag | Core Package Versions | Size |
|-----------|-----------------------|------|
| [`pangeonotebook-2021.05.04_prefect-0.14.7_pangeoforgerecipes-0.3.3`](./images/pangeonotebook-2021.05.04_prefect-0.14.7_pangeoforgerecipes-0.3.3)|pangeo-notebook - [`2021.05.04`](https://hub.docker.com/layers/pangeo/pangeo-notebook/2021.05.04/images/sha256-0e841ae67bf01526c953e7ce39fd8fc8bbb3fb6cc22794eefd867881e427e757?context=explore)<br>prefect - [`0.14.7`](https://github.com/PrefectHQ/prefect/releases/tag/0.14.17)<br>pangeo-forge-recipes - [`0.3.3`](https://github.com/pangeo-forge/pangeo-forge-recipes/releases/tag/0.3.3)| ![](https://img.shields.io/docker/image-size/pangeo-forge/bakery-worker/pangeonotebook-2021.05.04_prefect-0.14.7_pangeoforgerecipes-0.3.0) |

# Development

## Requirements

To develop on this project, you should have the following installed:

* [Docker](https://docs.docker.com/get-docker/)

If you're developing on MacOS, all of the above can be installed using [homebrew](https://brew.sh/)

If you're developing on Windows, we'd recommend using either [Git BASH](https://gitforwindows.org/) or [Windows Subsystem for Linux](https://docs.microsoft.com/en-us/windows/wsl/install-win10)
