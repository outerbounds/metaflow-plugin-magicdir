help:
	cat Makefile

run-remote:
	pip install -Uqe .
	cd tests && python flow.py run --with batch

run-local:
	pip install -Uqe .
	cd tests && rm -rf mydir && python flow.py run 

release:
	python setup.py sdist bdist_wheel
	twine upload dist/*
