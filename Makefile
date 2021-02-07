TARGETS=darwin/amd64,windows/amd64,linux/amd64

make:
	docker pull karalabe/xgo-latest
	go get -u github.com/karalabe/xgo
	xgo --deps="https://archive.mozilla.org/pub/opus/opus-1.3.1.tar.gz" --targets="$(TARGETS)" -out builds/dca-v0.1.0 github.com/davidcole1340/dca/cmd/dca
