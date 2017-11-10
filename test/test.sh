#!/bin/sh

cd test # get into `test/`

# Create a test repo
mkdir test-repo
cd test-repo
git init
cd .. # get out of `test-repo/`

cd .. # get out of `test/`


# tests
# ---
testItShouldBeWellTested()
{
    assertEquals 1 1
}

# load shunit2
. ./test/vendor/shunit2/shunit2
