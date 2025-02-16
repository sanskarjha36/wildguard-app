import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDf_gFNE_Lq58f7fmfAlow_V1eEO6ueHao",
            authDomain: "wildguard-5c294.firebaseapp.com",
            projectId: "wildguard-5c294",
            storageBucket: "wildguard-5c294.firebasestorage.app",
            messagingSenderId: "99039622786",
            appId: "1:99039622786:web:b0034267fa1a359c65669b",
            measurementId: "G-KTL0P5HV1B"));
  } else {
    await Firebase.initializeApp();
  }
}
