import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyA6z_hT_2NHCfFbUBctgZzVARsJZXNOC3s",
            authDomain: "t-l-ci-q-o3zvss.firebaseapp.com",
            projectId: "t-l-ci-q-o3zvss",
            storageBucket: "t-l-ci-q-o3zvss.appspot.com",
            messagingSenderId: "663837456668",
            appId: "1:663837456668:web:77e2e301140ef6347122d9"));
  } else {
    await Firebase.initializeApp();
  }
}
