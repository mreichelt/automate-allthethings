#!/bin/bash

./gradlew clean app:assembleDebug testDebug

OUTFILE=app/build/outputs/apksize.csv
echo filesize > $OUTFILE
stat -f%z app/build/outputs/apk/app-debug.apk >> $OUTFILE
