
all: pc-x86-64-image 

pc-x86-64-image: builder
	docker run buildroot_builder_pc  | docker import - waltplatform/walt-node:pc-x86-64-minimal

publish: pc-x86-64-image
	docker push waltplatform/walt-node:pc-x86-64-minimal

builder:
	docker build -t buildroot_builder_pc .
