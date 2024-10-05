#!/bin/bash

# Build launcher module
echo "Building launcher module..."
cmake -S launcherModule -B launcherModule/build
cmake --build launcherModule/build
if [ $? -ne 0 ]; then
    echo "Failed to build launcher module"
    exit 1
fi

# Build input module
echo "Building input module..."
cmake -S inputModule -B inputModule/build
cmake --build inputModule/build
if [ $? -ne 0 ]; then
    echo "Failed to build input module"
    exit 1
fi

# Build output module
echo "Building output module..."
cmake -S outputModule -B outputModule/build
cmake --build outputModule/build

if [ $? -ne 0 ]; then
    echo "Failed to build output module"
    exit 1
fi

# Run input module
echo "Building viewer module..."
cmake -S viewerModule -B viewerModule/build
cmake --build viewerModule/build

if [ $? -ne 0 ]; then
    echo "Failed to build viewer module"
    exit 1
fi

# Run output module
echo "Building modulation module..."
cmake -S modulationModule -B modulationModule/build
cmake --build modulationModule/build/

if [ $? -ne 0 ]; then
    echo "Failed to build modulation module"
    exit 1
fi