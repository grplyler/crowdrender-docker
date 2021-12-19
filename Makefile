all:
	docker build . --file Dockerfile --no-cache --tag crowdrender:gpu

nv:
	docker build . --file Dockerfile.old --no-cache --tag crowdrender:gpu