setup:
	python3.7 -m venv .flaskmlservice && \
	. .flaskmlservice/bin/activate
	python3.7 -m pip install pylint pytest
	python3.7 -m pip list
install:
	pip install --upgrade pip && \
		pip install -r requirements.txt && \
		pip install locust && \
		pip install locust-plugins
test:
	python3.7 -m pytest -vv test_hello.py
	python 

load-test:
	nohup timeout 60 python3.7 app.py &
	pid=${$!}
	sleep 2s
	locust -f locustfile.py --headless -u 10 -r 1 -H http://localhost:5000 -t 50s --check-fail-ratio 0.08 --only-summary

lint:
	#hadolint Dockerfile #uncomment to explore linting Dockerfiles
	python3.7 -m pylint --disable=R,C,W1203,W0703 app.py

all: setup install lint test load-test
