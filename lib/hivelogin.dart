import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class loginscr extends StatefulWidget {
  const loginscr({Key? key}) : super(key: key);

  @override
  State<loginscr> createState() => _loginscrState();
}

class _loginscrState extends State<loginscr> {
  final textcontroller = TextEditingController();
  final textcontroller1 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextFormField(
            controller: textcontroller,
            decoration: const InputDecoration(
              hintText: "enter your Gmail",
              border: OutlineInputBorder(),
            ),
          ),
          TextFormField(
            controller: textcontroller1,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: "enter your password",
            ),
          ),
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.check),
            label: const Text("login"),
          ),
        ],
      ),
    );
  }
}
