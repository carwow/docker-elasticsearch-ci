BASE_TAG:=carwow/elasticsearch-ci
VERSION_TAG:=$(BASE_TAG):5.5.1

build:
		docker build -t $(VERSION_TAG) image/

publish: build
		docker push $(VERSION_TAG)
