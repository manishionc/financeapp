import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAgnghH-mot44T1Ko3hfKuRxjILwAu-OT8",
            authDomain: "finance-app-92967.firebaseapp.com",
            projectId: "finance-app-92967",
            storageBucket: "finance-app-92967.appspot.com",
            messagingSenderId: "171910619172",
            appId: "1:171910619172:web:19d78f79e752d6b66b78b1",
            measurementId: "G-3TNEE5Q9HQ"));
  } else {
    await Firebase.initializeApp();
  }
}
