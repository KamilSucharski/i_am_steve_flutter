### i am steve  
<img src="web/screenshot_1.png" alt="screenshot 1" width="175" />&nbsp;<img src="web/screenshot_2.png" alt="screenshot 2" width="175" />&nbsp;<img src="web/screenshot_3.png" alt="screenshot 3" width="175" />&nbsp;<img src="web/screenshot_4.png" alt="screenshot 4" width="175" />  
  
A Flutter app for reading the "i am steve" web comic with offline support. Based on the Android version. Things missing from this one are:  
- Different themes based on light/dark mode  
- Fading edges on comic  
  
In order to deploy it in Android Studio, set the following in "Edit Configurations", where ${FLAVOR} is for example "neocities":  
- Dart entrypoint: ${YOUR_PATH_TO_PROJECT}\i_am_steve_flutter\lib\main.dart  
- Additional run args: --dart-define=flavor=${FLAVOR}  
  
In order to deploy it in command line, where ${FLAVOR} is dev/qa/uat/prod:  
flutter run --dart-define=flavor=${flavor}  
  
Command to build autogenerated code (data classes, dependency injection, etc):  
flutter pub run build_runner build --delete-conflicting-outputs