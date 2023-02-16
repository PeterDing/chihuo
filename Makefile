typecheck:
	mypy -p chihuo \
                --ignore-missing-imports \
                --warn-unreachable \
                --implicit-optional \
                --allow-redefinition \
                --disable-error-code abstract
	ruff check chihuo

format-check:
	black --check .

format:
	black .

build: all
	rm -fr dist
	poetry build -f sdist

publish: all
	poetry publish

build-publish: build publish

all: format-check typecheck
