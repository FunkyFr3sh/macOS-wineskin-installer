#!/bin/bash
osascript <<EOD
  set thePath to POSIX file "/Applications/Custom.app"
  tell application "Finder" to reveal thePath
EOD
