# setuptools-generate

[![pre-commit.ci status](https://results.pre-commit.ci/badge/github/Freed-Wu/setuptools-generate/main.svg)](https://results.pre-commit.ci/latest/github/Freed-Wu/setuptools-generate/main)
[![github/workflow](https://github.com/Freed-Wu/setuptools-generate/actions/workflows/main.yml/badge.svg)](https://github.com/Freed-Wu/setuptools-generate/actions)
[![codecov](https://codecov.io/gh/Freed-Wu/setuptools-generate/branch/main/graph/badge.svg)](https://codecov.io/gh/Freed-Wu/setuptools-generate)
[![readthedocs](https://shields.io/readthedocs/setuptools-generate)](https://setuptools-generate.readthedocs.io)

[![github/downloads](https://shields.io/github/downloads/Freed-Wu/setuptools-generate/total)](https://github.com/Freed-Wu/setuptools-generate/releases)
[![github/downloads/latest](https://shields.io/github/downloads/Freed-Wu/setuptools-generate/latest/total)](https://github.com/Freed-Wu/setuptools-generate/releases/latest)
[![github/issues](https://shields.io/github/issues/Freed-Wu/setuptools-generate)](https://github.com/Freed-Wu/setuptools-generate/issues)
[![github/issues-closed](https://shields.io/github/issues-closed/Freed-Wu/setuptools-generate)](https://github.com/Freed-Wu/setuptools-generate/issues?q=is%3Aissue+is%3Aclosed)
[![github/issues-pr](https://shields.io/github/issues-pr/Freed-Wu/setuptools-generate)](https://github.com/Freed-Wu/setuptools-generate/pulls)
[![github/issues-pr-closed](https://shields.io/github/issues-pr-closed/Freed-Wu/setuptools-generate)](https://github.com/Freed-Wu/setuptools-generate/pulls?q=is%3Apr+is%3Aclosed)
[![github/discussions](https://shields.io/github/discussions/Freed-Wu/setuptools-generate)](https://github.com/Freed-Wu/setuptools-generate/discussions)
[![github/milestones](https://shields.io/github/milestones/all/Freed-Wu/setuptools-generate)](https://github.com/Freed-Wu/setuptools-generate/milestones)
[![github/forks](https://shields.io/github/forks/Freed-Wu/setuptools-generate)](https://github.com/Freed-Wu/setuptools-generate/network/members)
[![github/stars](https://shields.io/github/stars/Freed-Wu/setuptools-generate)](https://github.com/Freed-Wu/setuptools-generate/stargazers)
[![github/watchers](https://shields.io/github/watchers/Freed-Wu/setuptools-generate)](https://github.com/Freed-Wu/setuptools-generate/watchers)
[![github/contributors](https://shields.io/github/contributors/Freed-Wu/setuptools-generate)](https://github.com/Freed-Wu/setuptools-generate/graphs/contributors)
[![github/commit-activity](https://shields.io/github/commit-activity/w/Freed-Wu/setuptools-generate)](https://github.com/Freed-Wu/setuptools-generate/graphs/commit-activity)
[![github/last-commit](https://shields.io/github/last-commit/Freed-Wu/setuptools-generate)](https://github.com/Freed-Wu/setuptools-generate/commits)
[![github/release-date](https://shields.io/github/release-date/Freed-Wu/setuptools-generate)](https://github.com/Freed-Wu/setuptools-generate/releases/latest)

[![github/license](https://shields.io/github/license/Freed-Wu/setuptools-generate)](https://github.com/Freed-Wu/setuptools-generate/blob/main/LICENSE)
[![github/languages](https://shields.io/github/languages/count/Freed-Wu/setuptools-generate)](https://github.com/Freed-Wu/setuptools-generate)
[![github/languages/top](https://shields.io/github/languages/top/Freed-Wu/setuptools-generate)](https://github.com/Freed-Wu/setuptools-generate)
[![github/directory-file-count](https://shields.io/github/directory-file-count/Freed-Wu/setuptools-generate)](https://github.com/Freed-Wu/setuptools-generate)
[![github/code-size](https://shields.io/github/languages/code-size/Freed-Wu/setuptools-generate)](https://github.com/Freed-Wu/setuptools-generate)
[![github/repo-size](https://shields.io/github/repo-size/Freed-Wu/setuptools-generate)](https://github.com/Freed-Wu/setuptools-generate)
[![github/v](https://shields.io/github/v/release/Freed-Wu/setuptools-generate)](https://github.com/Freed-Wu/setuptools-generate)

[![pypi/status](https://shields.io/pypi/status/setuptools-generate)](https://pypi.org/project/setuptools-generate/#description)
[![pypi/v](https://shields.io/pypi/v/setuptools-generate)](https://pypi.org/project/setuptools-generate/#history)
[![pypi/downloads](https://shields.io/pypi/dd/setuptools-generate)](https://pypi.org/project/setuptools-generate/#files)
[![pypi/format](https://shields.io/pypi/format/setuptools-generate)](https://pypi.org/project/setuptools-generate/#files)
[![pypi/implementation](https://shields.io/pypi/implementation/setuptools-generate)](https://pypi.org/project/setuptools-generate/#files)
[![pypi/pyversions](https://shields.io/pypi/pyversions/setuptools-generate)](https://pypi.org/project/setuptools-generate/#files)

Generate shell completions and man page when a python package is building.

## Usage

Add this package to your build requires:

```toml
[build-system]
requires = [ "setuptools >= 45", "setuptools-generate",]
build-backend = "setuptools.build_meta"

[project]
name = "demo"
version = "0.0.1"

[project.scripts]
demo = "demo:main"
```

Build your package:

```sh
python -m build
```

See your `build/resources`:

```console
$ tree build/resources
 build/resources
├──  demo-0.0.1-py3-none-any.whl  # wheel file
├──  demo-0.0.1.tar.gz  # source distribution file
├──  demo.1.gz  # man page
├──  demo.1.md  # markdown converted from the man page for document
└──  demo.fish  # fish completion script
```

You got them.

Example projects:

- [demo for click](https://github.com/Freed-Wu/setuptools-generate/tree/main/tests/click/src)
- [demo for shtab](https://github.com/Freed-Wu/setuptools-generate/tree/main/tests/shtab/src)
- [translate-shell](https://github.com/Freed-Wu/translate-shell)

See [document](https://setuptools-generate.readthedocs.io) to know more.
