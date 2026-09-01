#!/bin/bash

# install github cli
shelly install standard github-cli -n

# prompt user to log in to github cli
if ! gh auth status >/dev/null 2>&1; then
  gh auth login -p ssh -h github.com -w --skip-ssh-key
fi

# set up git authentication
gh auth setup-git
