// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
    apiKey: 'AIzaSyC1lm2NNs4M2Nz0IUrtExmNo59lGmOwO2Q',
    appId: '1:145675979158:web:62a2ef6e492693a65a35b7',
    messagingSenderId: '145675979158',
    projectId: 'getx-example-6122a',
    authDomain: 'getx-example-6122a.firebaseapp.com',
    storageBucket: 'getx-example-6122a.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCmaD90Cl4_ajx6zKwFujEA9HfBzSbwtik',
    appId: '1:145675979158:android:c3304bd0fe7677b75a35b7',
    messagingSenderId: '145675979158',
    projectId: 'getx-example-6122a',
    storageBucket: 'getx-example-6122a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAmxeuhGlQanFv2jzPz76_lCfaVUFveYho',
    appId: '1:145675979158:ios:3ae83cc863b9051f5a35b7',
    messagingSenderId: '145675979158',
    projectId: 'getx-example-6122a',
    storageBucket: 'getx-example-6122a.appspot.com',
    iosBundleId: 'com.yourcompany.firebase',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAmxeuhGlQanFv2jzPz76_lCfaVUFveYho',
    appId: '1:145675979158:ios:3ae83cc863b9051f5a35b7',
    messagingSenderId: '145675979158',
    projectId: 'getx-example-6122a',
    storageBucket: 'getx-example-6122a.appspot.com',
    iosBundleId: 'com.yourcompany.firebase',
  );
}
