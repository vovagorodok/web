#!/bin/bash

SCRIPT_DIR=$( cd $( dirname $0 ) && pwd )
BLICHESS_REPO_DIR=$SCRIPT_DIR/../blichess
BLICHESS_WEB_DIR=$BLICHESS_REPO_DIR/www
BLICHESS_OUT_DIR=$SCRIPT_DIR/apps/blichess

set -e

cd $BLICHESS_REPO_DIR
./build_release.sh

rm -rf $BLICHESS_OUT_DIR
mkdir -p $BLICHESS_OUT_DIR
cp -r $BLICHESS_WEB_DIR/. $BLICHESS_OUT_DIR