#!/bin/bash

STACKS="$@"

rm -rf output
mkdir -p output
mkdir -p output/skills
mkdir -p output/rules
mkdir -p output/workflows

copy_if_exists () {
  local src=$1
  local dest=$2

  if [ -d "$src" ] && [ "$(ls -A "$src" 2>/dev/null)" ]; then
    cp -r "$src"/* "$dest"/
  fi
}

# core
copy_if_exists core/skills output/skills
copy_if_exists core/rules output/rules
copy_if_exists core/workflows output/workflows

# stacks
for stack in $STACKS; do
  copy_if_exists "$stack/skills" output/skills
  copy_if_exists "$stack/rules" output/rules
  copy_if_exists "$stack/workflows" output/workflows
done