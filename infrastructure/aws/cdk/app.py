#!/usr/bin/env python3
import os

from aws_cdk import core

from bakery_images_stack import BakeryImagesStack

app = core.App()

identifier = os.environ["IDENTIFIER"]

BakeryImagesStack(app, f"pangeo-forge-bakery-images-{identifier}")

for k, v in {
    "Project": "pangeo-forge-bakery-images",
    "Stack": identifier,
    "Client": "pangeo-forge",
    "Owner": os.environ["OWNER"],
}.items():
    core.Tags.of(app).add(k, v, apply_to_launched_instances=True)

app.synth()
