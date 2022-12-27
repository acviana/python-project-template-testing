## Cookiecutter Sandbox

This project is `Makefile` set up to test updates to my [Python Template Project](https://github.com/acviana/python-project-template) built using [Cookiecutter](https://cookiecutter.readthedocs.io/en/stable/). 

The `Makefile` builds a Python project from a branch from my project template and validates that all the installation and testing steps run without crashing.

The idea is that I would developer change to my template in a feature branch and use this project to quickly sanity-check the branch before merging to master.

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