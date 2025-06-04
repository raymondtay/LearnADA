#!/usr/bin/env bash
set -e
rm -rf build/obj/* build/bin/* build/logs/*
# Optionally remove GNAT-generated dirs: *.ali, *.o (if not redirected)
find . -type f \( -name "*.o" -o -name "*.ali" \) -delete
