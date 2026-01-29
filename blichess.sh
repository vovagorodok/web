#!/bin/bash

SCRIPT_DIR=$( cd $( dirname $0 ) && pwd )
BLICHESS_REPO_DIR=$SCRIPT_DIR/../blichess
BLICHESS_BUILD_DIR=$BLICHESS_REPO_DIR/www
# BLICHESS_WEB_DIR=$BLICHESS_BUILD_DIR/web
BLICHESS_OUT_DIR=$SCRIPT_DIR/apps/blichess

set -e

cd $BLICHESS_REPO_DIR
./build_release.sh
# flutter clean
# flutter build web --base-href /web/apps/blichess/ --release

rm -rf $BLICHESS_OUT_DIR
mkdir -p $BLICHESS_OUT_DIR
cp -r $BLICHESS_BUILD_DIR/. $BLICHESS_OUT_DIR

# cd $BLICHESS_OUT_DIR
# INDEX_JS=$(ls -1t index-*.js | head -n 1)

# cat > index.html <<EOF
# <!DOCTYPE html>
# <html lang="en">
# <head>
#   <meta charset="UTF-8">
#   <title>Lichess Web</title>
# </head>
# <body>
#   <script type="module" src="./$INDEX_JS"></script>
# </body>
# </html>
# EOF