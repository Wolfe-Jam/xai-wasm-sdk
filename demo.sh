#!/bin/bash
# FAF xAI Delivery Package - One-Click Demo
# 30 seconds replaces 20 minutes of questions

set -e

echo ""
echo "  FAF xAI Delivery Package"
echo "  ========================"
echo ""

# Check what's available
echo "Contents:"
ls -la

echo ""
echo "Binary size:"
ls -lh xai-faf-core | awk '{print $5}'

echo ""
echo "WASM size:"
ls -lh wasm-sdk/xai_wasm_sdk_bg.wasm | awk '{print $5}'

echo ""
echo "Scoring sample project.faf..."
echo ""

# Score the included sample
if command -v python3 &> /dev/null; then
    echo "Starting browser demo server..."
    cd wasm-sdk
    python3 -m http.server 8888 &
    SERVER_PID=$!
    sleep 1
    echo ""
    echo "Browser demo: http://localhost:8888/browser-demo.html"
    echo ""
    echo "Press Ctrl+C to stop"

    # Open browser if possible
    if command -v open &> /dev/null; then
        open http://localhost:8888/browser-demo.html
    fi

    wait $SERVER_PID
else
    echo "Python3 not found - install to run browser demo"
    echo ""
    echo "To run MCP server manually:"
    echo "  ./xai-faf-core"
fi
