#!/bin/bash

# install github cli
shelly install standard github-cli -n

# prompt user to log in to github cli
gh auth login
