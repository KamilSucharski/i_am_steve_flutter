### i am steve
<img src="web/screenshot_1.png" alt="screenshot 1" width="175" />&nbsp;<img src="web/screenshot_2.png" alt="screenshot 2" width="175" />&nbsp;<img src="web/screenshot_3.png" alt="screenshot 3" width="175" />&nbsp;<img src="web/screenshot_4.png" alt="screenshot 4" width="175" />

A Flutter app for reading the "i am steve" web comic with offline support. Based on the Android version. Things missing from this one are:
- Different themes based on light/dark mode

In order to deploy it, set the following in "Edit Configurations":
- Dart entrypoint: ${YOUR_PATH_TO_PROJECT}\i_am_steve_flutter\lib\main_neocities.dart
- Additional run args: --no-sound-null-safety

Command to build autogenerated code:
flutter pub run build_runner build