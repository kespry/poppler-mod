#!/usr/bin/env bash
if [ "$(uname)" == "Darwin" ]; then
  echo "Mac OS detected; using pre-built poppler"
  rm -rf /usr/local/poppler
  mkdir -p /usr/local/poppler
  tar -xvzf poppler-mac.tar.gz -C /
elif [ -n "$BUILD_DIR" ]; then
  echo "Heroku detected; using pre-built poppler"
  echo "Build dir is $BUILD_DIR"
  echo `env`
  tar -zf poppler-heroku.tar.xz -C $BUILD_DIR
fi
