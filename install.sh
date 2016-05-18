#!/usr/bin/env bash
if [ "$(uname)" == "Darwin" ]; then
  echo "Mac OS detected; using pre-built poppler"
  mkdir -p /usr/local/poppler
  tar -xvzf poppler-mac.tar.gz -C /usr/local
elif [ -n "$BUILD_DIR"]; then
  echo "Heroku detected; using pre-built poppler"
  tar -zf poppler-heroku.tar.xz -C $BUILD_DIR
fi
