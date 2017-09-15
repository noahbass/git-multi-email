# git-multi-email

[![MIT License](https://img.shields.io/badge/license-MIT-brightgreen.svg)](http://opensource.org/licenses/MIT)
[![Build Status](https://travis-ci.org/noahbass/git-multi-email.svg?branch=master)](https://travis-ci.org/noahbass/git-multi-email)

> Automatically changes `git config user.email` based on path

Working on projects for multiple organizations? This git hook changes your email address as necessary in the git config local to the current repository before commit.

## Getting started

Clone with `git clone https://github.com/noahbass/git-multi-email.git`. Then `cd git-multi-email`.

Ensure you have a core hooks directory (ex: `~/.git-config/hooks/`). If not, use `mkdir -p ~/.git-config/hooks/` to create it and use `git config --global core.hooksPath ~/.git-config/hooks/` to configure that directory as your hooks path directory in `~/.gitconfig/hooks/`.

`git config --global core.hooksPath ~/.git-config/hooks/`

Then, use two commands to copy the hook to the global hooks folder:

- `cp ./post-commit ~/.git-config/hooks/post-commit`
- `chmod a+x ~/.git-config/hooks/post-commit`
- `mkdir ~/.git-config/hooks/vendor/`
- `cp ./vendor/ini-parser.sh ~/.git-config/hooks/vendor/ini-parser.sh`

Notes:
	- Requires Git v2.9.0 or later
	- Not tested on Windows

## Configuration

Update your `~/.gitconfig` file to include a new section called `[emails]`. Example configuration file:

```
...
[emails]
	astronomerio = noah@astronomer.io
	acmatuc = noah@acmatuc.org
```

So now, any commit made in a repo within a folder named `astronomerio` will use `noah@astronomer.io` as the email address. Similarly, any commit made in a repo within a folder named `acmatuc` will use `noah@acmatuc.org` as the email address.

(Remember that the `.gitconfig` file follows the [INI format](https://en.wikipedia.org/wiki/INI_file))

## Hacking on git-multi-email

TODO

## Tests

TODO
