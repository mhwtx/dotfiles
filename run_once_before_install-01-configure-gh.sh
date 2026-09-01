#!/bin/bash

# install github cli
shelly install standard github-cli -n

# prompt user to log in to github cli
# TODO should only do this if gh auth status says we are not logged in
gh auth login -p ssh -h github.com -w --skip-ssh-key
gh auth setup-git
