all:
	docker build --no-cache --tag crowdrender:gpu

run:
	docker run -it crowdrender:gpu \
	-v ./data:/app/data \
	bash

list:
	gcloud compute instances list

off:
	gcloud compute instances stop render

on:
	gcloud compute instances start render

ssh:
	gcloud compute ssh render