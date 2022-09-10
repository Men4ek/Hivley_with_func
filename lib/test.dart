import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Test extends StatefulWidget {
  Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  final controllerOne = TextEditingController();
  final controllerTwo = TextEditingController();
  final focusNodeOne = FocusNode();
  final focusNodeTwo = FocusNode();
  void onTap() {
    if (controllerOne.text == 'a' && controllerTwo.text == 'a') {
      print('1234565124');
    } else {
      print('asdadasd');
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                focusNode: focusNodeOne,
                controller: controllerOne,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              SizedBox(height: 40),
              TextField(
                focusNode: focusNodeTwo,
                controller: controllerTwo,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              OutlinedButton(
                onPressed: onTap,
                child: Text('BUTTON'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
