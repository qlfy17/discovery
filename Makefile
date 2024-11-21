migrate-create:
	migrate create -ext sql -dir migrations -seq $(name)

migrate-run-test-up:
	migrate --path ./migrations --database=${DISCOVERY-DATABASE-TEST} --verbose up

migrate-run-test-down:
	migrate --path ./migrations --database=${DISCOVERY-DATABASE-TEST} --verbose down

migrate-run-up:
	migrate --path ./migrations --database=${DISCOVERY-DATABASE} --verbose up

migrate-run-down:
	migrate --path ./migrations --database=${DISCOVERY-DATABASE} --verbose down
	