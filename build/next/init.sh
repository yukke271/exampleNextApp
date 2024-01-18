#!/bin/sh
mkdir -p /app/${APPNAME}
cd /app/${APPNAME}
yarn install
yarn dev