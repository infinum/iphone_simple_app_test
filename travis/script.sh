#!/bin/sh
set -e

xctool -workspace "simple test project.xcodeproj" -scheme simple_app build test