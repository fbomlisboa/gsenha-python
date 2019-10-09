.PHONY: install test clean release

ROOT_PATH=$(shell pwd)

install:
	@pip install -e .

test:
	@echo No Tests

clean:
	-@rm -rf $(ROOT_PATH)/*.egg-info
	-@rm -rf $(ROOT_PATH)/dist
	-@rm -rf $(ROOT_PATH)/build

release: clean
        @python setup.py sdist
        @twine upload --repository-url https://upload.pypi.org/legacy/ dist/*
