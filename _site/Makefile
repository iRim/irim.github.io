IMAGE := mysite-jekyll

build:
	docker build -t $(IMAGE) .

serve: build
	docker run --rm -it \
		-p 4000:4000 \
		-v "$(CURDIR):/srv/jekyll" \
		$(IMAGE)

shell: build
	docker run --rm -it \
		-v $(CURDIR):/srv/jekyll \
		$(IMAGE) \
		bash

.PHONY: build serve shell
