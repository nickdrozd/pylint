.PHONY : check diagrams format lint test type

CODE = pylint

check : format lint type test

format :
	black ${CODE}

lint :
	ruff check ${CODE}
	pylint ${CODE}

test :
	pytest

type :
	mypy ${CODE}

diagrams :
	pyreverse --only-classnames --no-standalone --colorized -o png ${CODE}
