#!/bin/bash

STACKS="$@"

rm -rf .output
mkdir -p .output
mkdir -p .output/skills
mkdir -p .output/rules
mkdir -p .output/workflows

cp -r core/skills/* .output/skills/
cp -r core/rules/* .output/rules/
cp -r core/workflows/* .output/workflows/

for stack in $STACKS; do
  cp -r $stack/skills/* .output/skills/
  cp -r $stack/rules/* .output/rules/
  cp -r $stack/workflows/* .output/workflows/
done