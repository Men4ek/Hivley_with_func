import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  void buttonPush() {
    Navigator.of(context).pushReplacementNamed('/auth');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/Hivley_logo1.png'),
            SizedBox(height: 50),
            OutlinedButton(
              onPressed: buttonPush,
              style: OutlinedButton.styleFrom(
                  backgroundColor: const Color(0xffFFA410),
                  shape: const StadiumBorder(),
                  padding: EdgeInsets.symmetric(horizontal: 62, vertical: 13)),
              child: const Text(
                'Let’s get buzzin’',
                style: TextStyle(
                    color: Color(0xff000000),
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
            )
          ],
        ),
      ),
    );
  }
}
