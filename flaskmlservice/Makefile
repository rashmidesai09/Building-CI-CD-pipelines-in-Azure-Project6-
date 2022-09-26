setup:
	python3.7 -m venv ~/.udacity-devops 

install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

linter-test-install:
	pip install pylint pytest

test:
	#python -m pytest -vv --cov=myrepolib tests/*.py
	#python -m pytest --nbval notebook.ipynb


lint:
	#hadolint Dockerfile #uncomment to explore linting Dockerfiles
	pylint --disable=R,C,W1203,W0703 app.py

all: install lint test
