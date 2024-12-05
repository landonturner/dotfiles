#!/bin/bash
set -eo pipefail
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

pushd $SCRIPT_DIR > /dev/null

if [[ ! $1 ]]; then
  echo "usage: update.sh VERSION"
  exit 123
fi

version=$1

url="https://dl.google.com/go/go${version}.darwin-arm64.tar.gz"

mkdir "${SCRIPT_DIR}/${version}"

pushd ${version} > /dev/null

echo "downloading go ${version}"

curl $url -o "go${version}.darwin-arm64.tar.gz"

echo "unpacking archive"
tar -zxvf "go${version}.darwin-arm64.tar.gz"

popd > /dev/null

echo "Setting current symlink"
if [ -L "current" ]; then
  rm current
fi
ln -s "$version" current

echo "${version} installation complete 🚀"
go version

