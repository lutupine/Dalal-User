warning: LF will be replaced by CRLF in config.xml.
The file will have its original line endings in your working directory.
warning: LF will be replaced by CRLF in package.json.
The file will have its original line endings in your working directory.
warning: LF will be replaced by CRLF in platforms/android/android.json.
The file will have its original line endings in your working directory.
warning: LF will be replaced by CRLF in platforms/android/app/build.gradle.
The file will have its original line endings in your working directory.
warning: LF will be replaced by CRLF in platforms/android/app/build/intermediates/incremental/mergeDebugAssets/merger.xml.
The file will have its original line endings in your working directory.
warning: LF will be replaced by CRLF in platforms/android/app/src/main/AndroidManifest.xml.
The file will have its original line endings in your working directory.
warning: LF will be replaced by CRLF in platforms/android/app/src/main/java/com/piprastudio/dalal/MainActivity.java.
The file will have its original line endings in your working directory.
warning: LF will be replaced by CRLF in platforms/android/app/src/main/res/values/strings.xml.
The file will have its original line endings in your working directory.
warning: LF will be replaced by CRLF in platforms/android/app/src/main/res/xml/config.xml.
The file will have its original line endings in your working directory.
warning: LF will be replaced by CRLF in platforms/android/settings.gradle.
The file will have its original line endings in your working directory.
[1mdiff --git a/platforms/android/.gradle/4.1/fileHashes/fileHashes.bin b/platforms/android/.gradle/4.1/fileHashes/fileHashes.bin[m
[1mindex 9530ab1..755923a 100644[m
Binary files a/platforms/android/.gradle/4.1/fileHashes/fileHashes.bin and b/platforms/android/.gradle/4.1/fileHashes/fileHashes.bin differ
[1mdiff --git a/platforms/android/.gradle/4.1/fileHashes/fileHashes.lock b/platforms/android/.gradle/4.1/fileHashes/fileHashes.lock[m
[1mindex c740d7d..e03f758 100644[m
Binary files a/platforms/android/.gradle/4.1/fileHashes/fileHashes.lock and b/platforms/android/.gradle/4.1/fileHashes/fileHashes.lock differ
[1mdiff --git a/platforms/android/.gradle/4.1/taskHistory/fileSnapshots.bin b/platforms/android/.gradle/4.1/taskHistory/fileSnapshots.bin[m
[1mindex fe22d27..44c9030 100644[m
Binary files a/platforms/android/.gradle/4.1/taskHistory/fileSnapshots.bin and b/platforms/android/.gradle/4.1/taskHistory/fileSnapshots.bin differ
[1mdiff --git a/platforms/android/.gradle/4.1/taskHistory/taskHistory.bin b/platforms/android/.gradle/4.1/taskHistory/taskHistory.bin[m
[1mindex 607b994..7e81f05 100644[m
Binary files a/platforms/android/.gradle/4.1/taskHistory/taskHistory.bin and b/platforms/android/.gradle/4.1/taskHistory/taskHistory.bin differ
[1mdiff --git a/platforms/android/.gradle/4.1/taskHistory/taskHistory.lock b/platforms/android/.gradle/4.1/taskHistory/taskHistory.lock[m
[1mindex 64e2bd0..13538d7 100644[m
Binary files a/platforms/android/.gradle/4.1/taskHistory/taskHistory.lock and b/platforms/android/.gradle/4.1/taskHistory/taskHistory.lock differ
[1mdiff --git a/platforms/android/android.json b/platforms/android/android.json[m
[1mindex e5991b3..6919a52 100644[m
[1m--- a/platforms/android/android.json[m
[1m+++ b/platforms/android/android.json[m
[36m@@ -134,11 +134,11 @@[m
           "/resources": [[m
             {[m
               "xml": "<string name=\"fb_app_id\">195612644565128</string>",[m
[31m-              "count": 2[m
[32m+[m[32m              "count": 11[m
             },[m
             {[m
               "xml": "<string name=\"fb_app_name\">OfferWall</string>",[m
[31m-              "count": 2[m
[32m+[m[32m              "count": 11[m
             }[m
           ][m
         }[m
[1mdiff --git a/platforms/android/app/build/intermediates/assets/debug/www/testingpage.html b/platforms/android/app/build/intermediates/assets/debug/www/testingpage.html[m
[1mindex 3ac567e..3d2e2cf 100644[m
[1m--- a/platforms/android/app/build/intermediates/assets/debug/www/testingpage.html[m
[1m+++ b/platforms/android/app/build/intermediates/assets/debug/www/testingpage.html[m
[36m@@ -52,7 +52,8 @@[m
     <script>[m
 [m
         var fbLoginSuccess = function (userData) {[m
[31m-            alert("UserInfo: ", userData);[m
[32m+[m[32m            //alert(JSON.stringify (userData));[m
[32m+[m[32m            alert (userData.status);[m
         }[m
 [m
         $("#fb").click(function(){[m
[1mdiff --git a/platforms/android/app/build/intermediates/incremental/packageDebug/debug/dex-renamer-state.txt b/platforms/android/app/build/intermediates/incremental/packageDebug/debug/dex-renamer-state.txt[m
[1mindex af53004..f3a2ca9 100644[m
[1m--- a/platforms/android/app/build/intermediates/incremental/packageDebug/debug/dex-renamer-state.txt[m
[1m+++ b/platforms/android/app/build/intermediates/incremental/packageDebug/debug/dex-renamer-state.txt[m
[36m@@ -1,4 +1,4 @@[m
[31m-#Wed Apr 25 02:29:12 BDT 2018[m
[32m+[m[32m#Wed Apr 25 03:51:35 BDT 2018[m
 base.0=E\:\\WORK\\02.PHONEGAP\\Projects\\Dalal\\platforms\\android\\app\\build\\intermediates\\transforms\\dexMerger\\debug\\0[m
 renamed.0=classes.dex[m
 file.0=E\:\\WORK\\02.PHONEGAP\\Projects\\Dalal\\platforms\\android\\app\\build\\intermediates\\transforms\\dexMerger\\debug\\0\\classes.dex[m
[1mdiff --git a/platforms/android/app/build/intermediates/incremental/packageDebug/debug/file-input-save-data.txt b/platforms/android/app/build/intermediates/incremental/packageDebug/debug/file-input-save-data.txt[m
[1m