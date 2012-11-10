SHELL=/bin/bash

clean:
	rm -rf build dist *.egg-info *.pyc

install:
	python setup.py install

test:
	@echo test

.PHONY: clean install test
