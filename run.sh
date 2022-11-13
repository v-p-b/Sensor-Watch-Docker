#!/bin/bash

echo "Action: $BUILD_ACTION" 

if [[ "$BUILD_ACTION" == "native" ]]; then
    make clean
    make
    echo "Native built."
else
    make clean
    emmake make 
    echo "Serving on http://localhost:8000"
    python3 -m http.server 8000 -d build
fi
