#!/bin/bash

cat system/app/webview/webview.apk.* 2>/dev/null >> system/app/webview/webview.apk
rm -f system/app/webview/webview.apk.* 2>/dev/null
