#!/bin/bash

for f in docker-entrypoint.sh Dockerfile cluster.properties.jinja2 dbconfig.xml README.md
do
  echo "Replacing version in $f"
  sed -i .bak 's/7\.6\.0/7.7.0/g' $f
  sed -i .bak 's/760/770/g' $f
done

rm -f *.bak
