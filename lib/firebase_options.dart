// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyARAlMBGSayOSa7NhM4iY6RHbpFElYXM3k',
    appId: '1:570817202147:web:990f1f8fdaefb798bd02d6',
    messagingSenderId: '570817202147',
    projectId: 'project-feed-ad811',
    authDomain: 'project-feed-ad811.firebaseapp.com',
    storageBucket: 'project-feed-ad811.appspot.com',
    measurementId: 'G-77EBQJMDB1',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDq0Y43Ux-o5hry-ZwuY86LN-g5pL_E4Ak',
    appId: '1:570817202147:android:7b8462ad57584a92bd02d6',
    messagingSenderId: '570817202147',
    projectId: 'project-feed-ad811',
    storageBucket: 'project-feed-ad811.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAOkRgkF_NiRMJ0khT0ZyZioZv3l4D8SFY',
    appId: '1:570817202147:ios:a243c75cc1f5c772bd02d6',
    messagingSenderId: '570817202147',
    projectId: 'project-feed-ad811',
    storageBucket: 'project-feed-ad811.appspot.com',
    iosClientId: '570817202147-0htk31sf5l7l9ttta24rgph4jc00gm5b.apps.googleusercontent.com',
    iosBundleId: 'com.example.projectFeed',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAOkRgkF_NiRMJ0khT0ZyZioZv3l4D8SFY',
    appId: '1:570817202147:ios:a243c75cc1f5c772bd02d6',
    messagingSenderId: '570817202147',
    projectId: 'project-feed-ad811',
    storageBucket: 'project-feed-ad811.appspot.com',
    iosClientId: '570817202147-0htk31sf5l7l9ttta24rgph4jc00gm5b.apps.googleusercontent.com',
    iosBundleId: 'com.example.projectFeed',
  );
}
