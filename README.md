# pangeo-forge Bakery Images ☁️🍞

This repository serves as the provider of the worker Docker image definitions used by `pangeo-forge` Bakeries and their dask clusters

All images are based on the `pangeo-notebook` image found [here](https://github.com/pangeo-data/pangeo-docker-images)

# Contents

* [📸 Images - Available image tags](#available-image-tags)
* [📸 Images - Usage](#usage)
* [🧑‍💻 Development - Requirements](#requirements)
* [🧑‍💻 Development - Building an image](#building-an-image)

# Images

## Available image tags

The following image tags for `pangeo-forge-bakery-images` are currently available on the `pangeo` DockerHub:

| Image Tag | Core Package Versions | Size |
|-----------|-----------------------|------|
| [`pangeonotebook-2021.05.15_prefect-0.14.19_pangeoforgerecipes-0.3.4`](./images/pangeonotebook-2021.05.15_prefect-0.14.19_pangeoforgerecipes-0.3.4)|pangeo-notebook - [`2021.05.15`](https://hub.docker.com/layers/pangeo/pangeo-notebook/2021.05.15/images/sha256-fffe116656367f88642f14d080a8ca26fd6c82042458bf6f1e603b551916493e?context=repo)<br>prefect - [`0.14.19`](https://github.com/PrefectHQ/prefect/releases/tag/0.14.19)<br>pangeo-forge-recipes - [`0.3.4`](https://github.com/pangeo-forge/pangeo-forge-recipes/releases/tag/0.3.4)| ![](https://img.shields.io/docker/image-size/pangeo/pangeo-forge-bakery-images/pangeonotebook-2021.05.15_prefect-0.14.19_pangeoforgerecipes-0.3.4) |
| [`pangeonotebook-2021.06.05_prefect-0.14.22_pangeoforgerecipes-0.4.0`](./images/pangeonotebook-2021.06.05_prefect-0.14.22_pangeoforgerecipes-0.4.0)|pangeo-notebook - [`2021.06.05`](https://hub.docker.com/layers/pangeo/pangeo-notebook/2021.06.05/images/sha256-fffe116656367f88642f14d080a8ca26fd6c82042458bf6f1e603b551916493e?context=repo)<br>prefect - [`0.14.22`](https://github.com/PrefectHQ/prefect/releases/tag/0.14.22)<br>pangeo-forge-recipes - [`0.4.0`](https://github.com/pangeo-forge/pangeo-forge-recipes/releases/tag/0.4.0)| ![](https://img.shields.io/docker/image-size/pangeo/pangeo-forge-bakery-images/pangeonotebook-2021.06.05_prefect-0.14.22_pangeoforgerecipes-0.4.0) |

## Usage

These tags are for use within a deployed `pangeo-forge` Bakery. You can find an AWS Bakery [here](https://github.com/pangeo-forge/pangeo-forge-aws-bakery) and an Azure Bakery [here](https://github.com/pangeo-forge/pangeo-forge-azure-bakery).

Bakeries require the containers that are pulling and running Prefect Flows to contain the necessary dependencies to successfully do this. On deployment of your Bakery, you should point your Agent and Worker containers to one of these `pangeo-forge-bakery-images` tags.

For example, you could deploy the Azure Bakery linked earlier and set `AZURE_BAKERY_IMAGE` in your `.env` like so:

```bash
AZURE_BAKERY_IMAGE="pangeo/pangeo-forge-bakery-images:pangeonotebook-2021.05.15_prefect-0.14.19_pangeoforgerecipes-0.3.4"
```

# Development

## Requirements

To develop on this project, you should have the following installed:

* [Docker](https://docs.docker.com/get-docker/)

If you're developing on MacOS, all of the above can be installed using [homebrew](https://brew.sh/)

If you're developing on Windows, we'd recommend using either [Git BASH](https://gitforwindows.org/) or [Windows Subsystem for Linux](https://docs.microsoft.com/en-us/windows/wsl/install-win10)

## Building an image

To build an image, select the tag from the table above that you wish to build, then in the root of the repo run:

```bash
$ make build-image image=<image-tag>
```

## Pushing an image

To successfully push an image tag to the `pangeo/pangeo-forge-bakery-images` registry, you will need two things:

* Access to the `pangeo` DockerHub organisation
* A [personal access token](https://docs.docker.com/docker-hub/access-tokens/)

When you have both of these, you'll need to login with:

```bash
$ docker login --username <your-username> --password <your-personal-access-token>
```

To push an image, select the tag from the table above that you wish to push, then in the root of the repo run:

```bash
$ make push-image image=<image-tag>
```
