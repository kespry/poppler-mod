#!/usr/bin/env bash
if [ "$(uname)" == "Darwin" ]; then
  echo "Mac OS detected; using pre-built poppler"
  rm -rf /usr/local/poppler
  mkdir -p /usr/local/poppler
  tar -xvzf poppler-mac.tar.gz -C /
elif [ -n "$BUILD_DIR" ]; then
  echo "Heroku detected; using pre-built poppler"
  echo "Build dir is $BUILD_DIR"
  mkdir -p "$BUILD_DIR/poppler"
  tar -xvzf poppler-heroku.tar.gz -C $BUILD_DIR/poppler
fi
