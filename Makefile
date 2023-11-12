install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest --nbval main.ipynb

format:	
	black *.py 

lint:
	ruff check *.py #mylib/*.py
	
#container-lint:
	#docker run --rm -i hadolint/hadolint < Dockerfile

refactor: format lint

#deploy:
	#deploy goes here
		
all: install lint test format deploy