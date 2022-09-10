import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../textstyles/text.dart';

class AuthWidget extends StatefulWidget {
  const AuthWidget({Key? key}) : super(key: key);

  @override
  State<AuthWidget> createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          RegisterPage(),
        ],
      ),
    );
  }
}

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 60),
        Image.asset('assets/images/splash1.png'),
        const SizedBox(height: 54),
        const Text(
          'Welcome back!',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 7),
        const Text(
          'Let’s get done with the\n   formalities quickly.',
          style: TextStyle(
              color: Color(0xffFFA410),
              fontSize: 16,
              fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 26),
        FormWidget(),
        SizedBox(height: 16),
        Text('Already have an account?', style: textStyleSignIn)
      ],
    );
  }
}

class FormWidget extends StatefulWidget {
  const FormWidget({Key? key}) : super(key: key);

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  final loginEditController = TextEditingController();
  final passEditController = TextEditingController();

  String? errorText;
  void auth() {
    final login = loginEditController.text;
    final pass = passEditController.text;

    if (login == 'a' && pass == 'a') {
      print('developer');
      // Navigator.of(context).pushNamed('/main_screen');
      Navigator.of(context).pushReplacementNamed('/main_screen');
      errorText = null;
    } else {
      errorText = 'Incorrect pass or login';
      print(errorText);
    }
    setState(() {});
  }

  void resetPass() {
    print('password is gone');
  }

  @override
  Widget build(BuildContext context) {
    InputDecoration decor = const InputDecoration(
      contentPadding: EdgeInsets.only(top: 11, bottom: 10, left: 26, right: 14),
      hintText: 'Enter password',
      filled: true,
      fillColor: Colors.white,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
    );
    InputDecoration decor2 = const InputDecoration(
      contentPadding: EdgeInsets.only(top: 11, bottom: 10, left: 26, right: 14),
      hintText: 'Enter your login',
      filled: true,
      fillColor: Colors.white,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
    );

    return Column(
      children: [
        if (errorText != null) ...[
          Text(
            errorText!,
            style: TextStyle(color: Colors.red, fontSize: 16),
          ),
          SizedBox(height: 10),
        ],
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 62),
          child: TextField(
            decoration: decor2,
            style: style,
            controller: loginEditController,
          ),
        ),
        const SizedBox(height: 11),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 62),
          child: TextField(
            style: style,
            decoration: decor,
            obscureText: true,
            controller: passEditController,
          ),
        ),
        const SizedBox(height: 47),
        TextButton(
          onPressed: resetPass,
          child: Text('Forgot Password?', style: textstyle),
        ),
        const SizedBox(height: 47),
        Container(
          width: 250,
          height: 50,
          child: OutlinedButton(
            onPressed: auth,
            style: OutlinedButton.styleFrom(
                backgroundColor: const Color(0xffFFA410),
                shape: const StadiumBorder(),
                padding: EdgeInsets.symmetric(horizontal: 62, vertical: 13)),
            child: const Text(
              'Sign In',
              style: TextStyle(
                  color: Color(0xff000000),
                  fontWeight: FontWeight.w600,
                  fontSize: 18),
            ),
          ),
        ),
        SizedBox(height: 16),
      ],
    );
  }
}
