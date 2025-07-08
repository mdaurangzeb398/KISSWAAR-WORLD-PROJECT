// 📛 Profile Name: lib/firebase_options.dart

import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart' show defaultTargetPlatform, TargetPlatform;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    return firebaseOptions;
  }

  static const FirebaseOptions firebaseOptions = FirebaseOptions(
    apiKey: 'AIzaSyBydgPUGbwySUcALY1ZQct1S7l5O7Y5J0',
    appId: '1:28072591957:web:60ba36d20e741ef3e44adc',
    messagingSenderId: '28072591957',
    projectId: 'kisswaar-world-project',
    authDomain: 'kisswaar-world-project.firebaseapp.com',
    storageBucket: 'kisswaar-world-project.appspot.com',
    measurementId: 'G-KKW1LSBR64',
  );
}
