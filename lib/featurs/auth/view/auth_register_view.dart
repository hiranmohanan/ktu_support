import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../constants/constants.dart';
import '../../home/view/home_view.dart';

class AuthRegisterView extends StatelessWidget {
  const AuthRegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    final SizedBox box = SizedBox(
      height: 10,
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: Center(
        child: ListView(
          padding: EdgeInsets.all(5.w),
          children: [
            TextField(
              decoration: textFieldDecoration(
                context: context,
                hintText: 'Name',
              ),
            ),
            box,
            TextField(
              decoration: textFieldDecoration(
                context: context,
                hintText: 'Email',
              ),
            ),
            box,
            TextField(
              decoration: textFieldDecoration(
                context: context,
                hintText: 'Phone Number',
              ),
            ),
            box,
            TextField(
              decoration: textFieldDecoration(
                context: context,
                hintText: 'Password',
              ),
            ),
            box,
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomeView()));
              },
              child: const Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}
