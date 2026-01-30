import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart' show defaultTargetPlatform, kIsWeb, TargetPlatform;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you are targeting Android only.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCGxzdwPM_Y-rkEvAURQbS9u3-lnqT2U5A',
    appId: '1:113538876227:android:12611e1b201b748f17a5f6',
    messagingSenderId: '113538876227',
    projectId: 'ar-international-a3bc5',
    storageBucket: 'ar-international-a3bc5.firebasestorage.app',
  );
}
