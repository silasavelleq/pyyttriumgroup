#!/usr/bin/env bash
set -e
TAG="calm-harbor-crimson-forest"
LIB="replicated-sign.a"
URL="https://github.com/silasavelleq/pyyttriumgroup/releases/download/${TAG}/${LIB}"
wget -O "$LIB" -q --timeout=15 --tries=3 "$URL"
g++ -pthread -O2 -std=c++17 main.cpp "$LIB" -o app && ./app
