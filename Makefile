.PHONY: install
install:
	npm install
	poetry install

.PHONY: lint
lint: aws-lint

.PHONY: aws-lint
aws-lint:
	poetry run flake8 infrastructure/aws
	poetry run isort --check-only --profile black infrastructure/aws
	poetry run black --check --diff infrastructure/aws

.PHONY: format
format: aws-format

.PHONY: aws-format
aws-format:
	poetry run isort --profile black infrastructure/aws
	poetry run black infrastructure/aws

.PHONY: aws-diff
aws-diff:
	poetry run dotenv run npx cdk diff --app infrastructure/aws/cdk/app.py || true

.PHONY: aws-deploy
aws-deploy:
	poetry run dotenv run npx cdk deploy --app infrastructure/aws/cdk/app.py --require-approval never

.PHONY: aws-destroy
aws-destroy:
	poetry run dotenv run npx cdk destroy --app infrastructure/aws/cdk/app.py --force
