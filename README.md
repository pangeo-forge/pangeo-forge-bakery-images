# pangeo-forge-bakery-images ☁️🍞

This repository serves as the provider of the Docker image definitions used by `pangeo-forge` Bakeries and their dask clusters and the infrastructure to host those images on various cloud platforms

# Contents

* [🧑‍💻 Development - Requirements](#requirements)
* [🧑‍💻 Development - Getting Started](#getting-started-🏃‍♀️)
* [🧑‍💻 Development - Makefile goodness](#makefile-goodness)

# Development

## Requirements

To develop on this project, you should have the following installed:

* [Node 14](https://nodejs.org/en/download/) (We recommend using NVM [Node Version Manager](https://github.com/nvm-sh/nvm))
* [Python 3.8.*](https://www.python.org/downloads/) (We recommend using [Pyenv](https://github.com/pyenv/pyenv) to handle Python versions)
* [Poetry](https://github.com/python-poetry/poetry)
* [AWS CDK](https://docs.aws.amazon.com/cdk/latest/guide/getting_started.html) - There is a `package.json` in the repository, it's recommended to run `npm install` in the repository root and make use of `npx <command>` rather than globally installing AWS CDK
* [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-welcome.html)
* [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli)
* [Terraform 0.15.1](https://www.terraform.io/downloads.html)
* [Docker](https://docs.docker.com/get-docker/)

If you're developing on MacOS, all of the above can be installed using [homebrew](https://brew.sh/)

If you're developing on Windows, we'd recommend using either [Git BASH](https://gitforwindows.org/) or [Windows Subsystem for Linux](https://docs.microsoft.com/en-us/windows/wsl/install-win10)
