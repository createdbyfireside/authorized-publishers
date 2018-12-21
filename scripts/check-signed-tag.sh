#!/bin/sh

echo "Importing authorized publisher's gpg keys"

# Import gpg keys that are authorized to trigger npm publish
gpg --import keys/authorized-publishers.asc

echo "Importing gpg trust store"

# Import trust store
gpg --import-ownertrust < keys/trusted-keys.txt

echo "Verifying tag $0"

# Verify the current tag with git
git tag -v $0
