make:
	docker pull karalabe/xgo-latest
	go get -u github.com/karalabe/xgo
	xgo \
		-out builds/dca-v0.1.0 \
		--targets=darwin/*,linux/amd64,linux/386\
		github.com/davidcole1340/dca/cmd/dca