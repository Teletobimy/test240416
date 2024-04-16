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
    apiKey: 'AIzaSyBB23uTI66tUFmV2HWLp1qVpQDU4Y1RcU8',
    appId: '1:63869700251:web:f394ff306d52443c561e3e',
    messagingSenderId: '63869700251',
    projectId: 'testproject240416',
    authDomain: 'testproject240416.firebaseapp.com',
    storageBucket: 'testproject240416.appspot.com',
    measurementId: 'G-SLRWL7ZPHP',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCkqiWRqYhlp5P9X2KcPMfSJLFkeLw4MM4',
    appId: '1:63869700251:android:b6e5f5956332a134561e3e',
    messagingSenderId: '63869700251',
    projectId: 'testproject240416',
    storageBucket: 'testproject240416.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC-v2UIk1U1UtOmiGm0LgYsvDce9CTd3A4',
    appId: '1:63869700251:ios:5a78f5de04768922561e3e',
    messagingSenderId: '63869700251',
    projectId: 'testproject240416',
    storageBucket: 'testproject240416.appspot.com',
    iosBundleId: 'com.example.test02',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC-v2UIk1U1UtOmiGm0LgYsvDce9CTd3A4',
    appId: '1:63869700251:ios:3eeb19bf3397d0f2561e3e',
    messagingSenderId: '63869700251',
    projectId: 'testproject240416',
    storageBucket: 'testproject240416.appspot.com',
    iosBundleId: 'com.example.test02.RunnerTests',
  );
}
