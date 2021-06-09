.PHONY: build-image
build-image:
	docker build -t pangeo/pangeo-forge-bakery-images:$(image) -f ./images/$(image)/Dockerfile ./images/$(image)

.PHONY: push-image
push-image:
	docker push pangeo/pangeo-forge-bakery-images:$(image)
