#! /usr/bin/env bash

NAME='bitset2-conan'

set -e
script_dir="$( cd "$( dirname "${bash_source[0]}" )" && pwd )"

docker build $script_dir -t $NAME
docker run -it --rm -v $script_dir:/src $NAME
