#!/bin/bash

# install github cli
shelly install standard github-cli -n

# prompt user to log in to github cli
gh auth login -p ssh -h github.com -w --skip-ssh-key

# setup git, maybe should move this to fish config so it just always runs, idk
gh auth setup-git
