import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ktu_support/firebase_options.dart';
import 'package:sizer/sizer.dart';

import 'featurs/auth/view/login_view.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LoginView(),
      );
    });
  }
}
