#!/bin/bash

mkdir $ANDROID_HOME/licenses
echo 8933bad161af4178b1185d1a37fbf41ea5269c55 > $ANDROID_HOME/licenses/android-sdk-license
echo 84831b9409646a918e30573bab4c9c91346d8abd > $ANDROID_HOME/licenses/android-sdk-preview-license

./gradlew clean app:assembleDebug testDebug

OUTFILE=app/build/outputs/apksize.csv
echo filesize > $OUTFILE
stat -f%z app/build/outputs/apk/app-debug.apk >> $OUTFILE
