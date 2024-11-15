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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBsSX8lXBu6voyeXewXgQlR7fHqcfj8OfE',
    appId: '1:300215223818:android:a5d9b6c3a9ba0b0a68c1f3',
    messagingSenderId: '300215223818',
    projectId: 'fir-demo-1e1eb',
    databaseURL: 'https://fir-demo-1e1eb-default-rtdb.firebaseio.com',
    storageBucket: 'fir-demo-1e1eb.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAmQtlL2MwddseryGj7XjWEQZgiW8__sGM',
    appId: '1:300215223818:ios:e02d04868df48cb068c1f3',
    messagingSenderId: '300215223818',
    projectId: 'fir-demo-1e1eb',
    databaseURL: 'https://fir-demo-1e1eb-default-rtdb.firebaseio.com',
    storageBucket: 'fir-demo-1e1eb.firebasestorage.app',
    iosClientId: '300215223818-c8l56cp14bpuu659o8rondvruqbie0s0.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebaseDemo',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAmQtlL2MwddseryGj7XjWEQZgiW8__sGM',
    appId: '1:300215223818:ios:e02d04868df48cb068c1f3',
    messagingSenderId: '300215223818',
    projectId: 'fir-demo-1e1eb',
    databaseURL: 'https://fir-demo-1e1eb-default-rtdb.firebaseio.com',
    storageBucket: 'fir-demo-1e1eb.firebasestorage.app',
    iosClientId: '300215223818-c8l56cp14bpuu659o8rondvruqbie0s0.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebaseDemo',
  );

}