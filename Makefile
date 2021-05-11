.PHONY: build-image
build-image:
	docker build -t bakery-worker:$(image) -f ./images/$(image)/Dockerfile ./images/$(image)
