#!/bin/sh

# setup
# ---

echo "Running shunit2 setup..."

# check if vendor/shunit2 exists
# if not, then download and setup shunit2
cd test
mkdir vendor
mkdir vendor/shunit2
cd vendor
curl -L https://github.com/kward/shunit2/archive/master.tar.gz | tar -xzv -C shunit2 --strip-components 1
cd ..

# loading git config
echo "Running git config setup..."
cp test-config.ini ~/.gitconfig
echo "Loaded configuration details: $(git config --list)"
