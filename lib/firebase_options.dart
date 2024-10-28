import 'package:firebase_core/firebase_core.dart';

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    // Since we're only targeting Android, we can directly return the Android options
    return androidOptions;
  }

  static const FirebaseOptions androidOptions = FirebaseOptions(
    apiKey: 'AIzaSyBrdazpwMao4wMce4L1lq0ewSP_5b-A1M0',
    appId: '1:791108352617:android:6aa570e369daad8b7fc0f8',
    messagingSenderId: '791108352617',
    projectId: 'flutterauth-75c57',
    // Add other Android-specific options here if needed
  );
}




// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/foundation.dart' show kIsWeb;
// import 'dart:io' show Platform;

// class DefaultFirebaseOptions {
//   static FirebaseOptions get currentPlatform {
//     if (kIsWeb) {
//       return webOptions;
//     }
//     // This is where we check for the current platform
//     switch (Platform.operatingSystem) {
//       case 'android':
//         return androidOptions;
//       // case 'ios':
//       //   return iosOptions;
//       // case 'macos':
//       //   return macosOptions;
//       // case 'windows':
//       //   return windowsOptions;
//       // case 'linux':
//       //   return linuxOptions;
//       default:
//         throw UnsupportedError(
//           'DefaultFirebaseOptions are not supported for this platform.',
//         );
//     }
//   }

//   static const FirebaseOptions webOptions = FirebaseOptions(
//     apiKey: 'YOUR_API_KEY',
//     appId: 'YOUR_APP_ID',
//     messagingSenderId: 'YOUR_MESSAGING_SENDER_ID',
//     projectId: 'YOUR_PROJECT_ID',
//     authDomain: 'YOUR_AUTH_DOMAIN',
//     // Add other web-specific options here
//   );

//   static const FirebaseOptions androidOptions = FirebaseOptions(
//     apiKey: 'AIzaSyBrdazpwMao4wMce4L1lq0ewSP_5b-A1M0',
//     appId: '1:791108352617:android:6aa570e369daad8b7fc0f8',
//     messagingSenderId: '791108352617',
//     projectId: 'flutterauth-75c57',
//     // Add other Android-specific options here
//   );

//   // static const FirebaseOptions iosOptions = FirebaseOptions(
//   //   apiKey: 'YOUR_IOS_API_KEY',
//   //   appId: 'YOUR_IOS_APP_ID',
//   //   messagingSenderId: 'YOUR_MESSAGING_SENDER_ID',
//   //   projectId: 'YOUR_PROJECT_ID',
//   //   // Add other iOS-specific options here
//   // );

//   // static const FirebaseOptions macosOptions = FirebaseOptions(
//   //   apiKey: 'YOUR_MACOS_API_KEY',
//   //   appId: 'YOUR_MACOS_APP_ID',
//   //   messagingSenderId: 'YOUR_MESSAGING_SENDER_ID',
//   //   projectId: 'YOUR_PROJECT_ID',
//   //   // Add other macOS-specific options here
//   // );

//   // static const FirebaseOptions windowsOptions = FirebaseOptions(
//   //   apiKey: 'YOUR_WINDOWS_API_KEY',
//   //   appId: 'YOUR_WINDOWS_APP_ID',
//   //   messagingSenderId: 'YOUR_MESSAGING_SENDER_ID',
//   //   projectId: 'YOUR_PROJECT_ID',
//   //   // Add other Windows-specific options here
//   // );

//   // static const FirebaseOptions linuxOptions = FirebaseOptions(
//   //   apiKey: 'YOUR_LINUX_API_KEY',
//   //   appId: 'YOUR_LINUX_APP_ID',
//   //   messagingSenderId: 'YOUR_MESSAGING_SENDER_ID',
//   //   projectId: 'YOUR_PROJECT_ID',
//   // );
// }


