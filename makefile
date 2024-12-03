default: pre-build orm halfscale rgb

pre-build:
	go mod tidy
	go mod download
	mkdir -p bin
orm: pre-build
	go build -o bin/extract-orm.exe ./cmd/extract-orm

halfscale: pre-build
	go build -o bin/halfscale.exe ./cmd/halfscale

rgb: pre-build
	go build -o bin/rgb/clean-red.exe ./cmd/clean-red
	go build -o bin/rgb/clean-green.exe ./cmd/clean-green
	go build -o bin/rgb/clean-blue.exe ./cmd/clean-blue
	go build -o bin/rgb/just-red.exe ./cmd/just-red
	go build -o bin/rgb/just-green.exe ./cmd/just-green
	go build -o bin/rgb/just-blue.exe ./cmd/just-blue
	go build -o bin/rgb/invert-color.exe ./cmd/invert-color
