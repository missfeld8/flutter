import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBxlY1ESoNvNz39b3LHGa15se9_m7ZyUv8",
            authDomain: "crud-1204b.firebaseapp.com",
            projectId: "crud-1204b",
            storageBucket: "crud-1204b.appspot.com",
            messagingSenderId: "49596319398",
            appId: "1:49596319398:web:4e392ff4994283dc7f9667"));
  } else {
    await Firebase.initializeApp();
  }
}
