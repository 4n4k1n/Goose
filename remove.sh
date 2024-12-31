#!/bin/bash

echo "Removing extracted goose directory..."
rm -rf ~/goose

echo "Removing downloaded zip file..."
rm -f ~/goose.zip

echo "Terminating any running goose processes..."
pkill -f goose

echo "Cleanup complete. The goose has been shooed away!"
