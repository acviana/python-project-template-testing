branch=main

build:
	cookiecutter --no-input https://github.com/acviana/python-project-template.git --checkout $(branch)

# Not 100% sure if I need to remove the virtualenv manually like this.
remove:
	#(cd my_module && poetry env remove --all)
	rm -fr my_module/

install:
	(cd my_module && poetry install)

# currently, there is no easy way to run poetry ourside the parent
# root dir.
# Ref: https://github.com/python-poetry/poetry/issues/2179
pre-commit:
	(cd my_module && poetry run make publish-release)

run: remove build install pre-commit