## Cookiecutter Sandbox

This project is a `Makefile` set up to test updates to my [Python Template Project](https://github.com/acviana/python-project-template) built using the [Cookiecutter](https://cookiecutter.readthedocs.io/en/stable/) framework. 

The `Makefile` builds a Python project off a specified branch from my project template and validates that all the installation and testing steps run without crashing.

The motivation for this project is that Cookiecutter projects are a little tricky to update because you update and template but then have to build the template to make sure everything works.
This project automates the building and sanity checking to make the template development workflow easier.

### Setup Instructions

This project has two dependencies:

 - [Poetry](https://python-poetry.org/)
 - Cookiecutter

However, this project (and Cookiecutter) can not be installed in Poetry virtual environment (or possibly a virtualenv as well).
This is because the target Cookiecutter template uses Poetry for dependency and environment management and you can't nest the virtual environments.
There might be some way to accomplish this with a subshell but, meh, this works fine.

### Execution Instructions

Everything runs off a `Makefile`:

```console
$ make run branch=my-test-branch
```

Notes:
 - The default branch is `main`
 - The `run` rule automatically destroys any previous local project builds builds (i.e. runs `rm -fr my_module`).