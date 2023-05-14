workspace:
	docker-compose -f ./infra/docker-compose.yml up -d workspace
	docker-compose -f ./infra/docker-compose.yml exec workspace bash

exit:
	docker-compose -f ./infra/docker-compose.yml down --remove-orphans --volumes
