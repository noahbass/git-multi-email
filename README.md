# git-multi-email

[![MIT License](https://img.shields.io/badge/license-MIT-brightgreen.svg)](http://opensource.org/licenses/MIT)
[![Build Status](https://travis-ci.org/noahbass/git-multi-email.svg?branch=master)](https://travis-ci.org/noahbass/git-multi-email)

> Automatically changes `git config user.email` based on path

Working on projects for many organizations? This git hook changes your email address as necessary in the git config local to the current repository before commit.

## Getting started

Clone with ...

## Configuration

Update your `~/.gitconfig` file to includes a new section called `[emails]`. Example configuration file:

```
...
[emails]
	astronomerio = noah@astronomer.io
	acmatuc = noah@acmatuc.org
```

## Hacking on git-multi-email

TODO

## Tests

Setup tests with `curl ...`, then run with `sh test/test.sh`.
