# This Makefile describes the build process for the project

# Usage: `make install`
# Installs required dependencies
install:
	pip install --upgrade pip && \
		pip install -r requirements.txt

# Usage: `make format`
# Formats Python code
format:
	black *.py

# Usage: `make lint`
# Lints (analyzes) source code to identify potential errors
lint:
	pylint --disable=R,C hello.py

# Usage: `make test`
# Runs tests written for this project
test:
	python -m pytest -vv --cov=hello test_hello.py

# Usage: `make all`
# Installs dependencies, lints source code, and runs test in that order
all: install lint test
