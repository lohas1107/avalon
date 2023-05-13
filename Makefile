init: start-workspace stop-workspace

start-workspace: stop-workspace
	docker build -t avalon-workspace -f infra/Dockerfile .
	docker run -it --rm \
		--name avalon-workspace \
		-v $(PWD):/avalon \
		avalon-workspace bash

stop-workspace:
	docker stop workspace || true