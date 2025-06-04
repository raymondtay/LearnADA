#!/usr/bin/env bash
set -e
echo "Cleaning previous builds..."
./scripts/clean.sh

echo "Building main executable..."
gnatmake -P ada_project.gpr main.adb

echo "Building & running tests..."
for t in tests/*.adb; do
  exe_name=$(basename "${t}" .adb)
  gnatmake -P ada_project.gpr "${exe_name}.adb"
  ./"${exe_name}"
done

echo "Building examples..."
for ex in examples/*/; do
  (cd "${ex}" && gnatmake -P "${ex}$(basename ${ex}).gpr")
done

echo "All builds successful!"
