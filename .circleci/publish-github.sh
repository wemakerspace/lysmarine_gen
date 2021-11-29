#!/usr/bin/env bash

echo "Publishing"

set -x

EXT=$1
REPO=$2
DISTRO=$3

pwd
ls

for pkg_file in cross-build-release/release/*/*.$EXT; do
  zipName=$(basename $pkg_file)
  zipDir=$(dirname $pkg_file)
  mkdir ./tmp
  chmod 755 ./tmp
  cd $zipDir || exit 255
  xz -z -c -v -1 --threads=4 --memory=2G ${zipName} > ../../../tmp/${zipName}.xz
  cd ../../../tmp || exit 255
  split -d -n 6 -a 1 ${zipName}.xz ${zipName}.xz.part
  for idx in 0 1 2 3 4 5; do
    FILE=${zipName}.xz.part.${idx}
    echo curl -X POST \
    -H '"Content-Length: $(stat --format=%s '$FILE')"' \
    -H '"Content-Type: $(file -b --mime-type '$FILE')"' \
    -T '"'$FILE'"' \
    -H '"Authorization: token '$GITHUB_TOKEN'"' \
    -H '"Accept: application/vnd.github.v3+json"' \
    '"https://uploads.github.com/repos/bareboat-necessities/lysmarine_gen/releases/54202060/assets?name=$(basename '$FILE')" | cat' \
      >> upload.command
  done
  cat upload.command
  cat upload.command | xargs -L 1 -I CMD -P 6 bash -c CMD
done
