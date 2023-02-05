import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class loginscr extends StatelessWidget {
  loginscr({Key? key}) : super(key: key);

  final textcontroller = TextEditingController();

  final textcontroller1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: textcontroller,
              decoration: const InputDecoration(
                hintText: "enter your name",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: textcontroller1,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "enter your age",
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.add),
            label: const Text("ADD"),
          ),
        ],
      ),
    );
  }
}
