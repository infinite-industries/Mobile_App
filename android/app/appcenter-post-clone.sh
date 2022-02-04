#!/usr/bin/env bash
#Place this script in project/android/app/

cd ..

# fail if any command fails
set -e
# debug log
set -x

cd ..
git clone -b stable https://github.com/flutter/flutter.git
export PATH=`pwd`/flutter/bin:$PATH

# ==== from stackflow (https://stackoverflow.com/questions/64046233/issue-building-flutter-android-apk-with-ms-appcenter-using-flavors) ====
target="lib/main.dart"
# ====

flutter channel stable
flutter doctor
flutter pub get #(https://stackoverflow.com/questions/64046233/issue-building-flutter-android-apk-with-ms-appcenter-using-flavors)

echo "Installed flutter to `pwd`/flutter"

flutter build apk --profile # from (https://stackoverflow.com/questions/62720395/flutter-release-apk-error-execution-failed-for-task-applintvitalrelease)
flutter build apk --debug
flutter build apk --release # from (https://stackoverflow.com/questions/64046233/issue-building-flutter-android-apk-with-ms-appcenter-using-flavors)

#copy the APK where AppCenter will find it
mkdir -p android/app/build/outputs/apk/; mv build/app/outputs/apk/release/app-release.apk $_