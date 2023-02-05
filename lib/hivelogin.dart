import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

final _textcontroller = TextEditingController();
final _textcontroller1 = TextEditingController();

class loginscr extends StatelessWidget {
  loginscr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: _textcontroller,
              decoration: const InputDecoration(
                hintText: "enter your name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30.0),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: _textcontroller1,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30.0),
                  ),
                ),
                hintText: "enter your age",
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          ElevatedButton.icon(
            onPressed: () {
              checkthevalue();
            },
            icon: const Icon(Icons.add),
            label: const Text("ADD"),
            style: ButtonStyle(
              shape: MaterialStateProperty.all(
                const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(18.0),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Future<void> checkthevalue() async {
  final _name = _textcontroller.text.trim();
  final _age = _textcontroller1.text.trim();
  if (_name.isEmpty || _age.isEmpty) {
    return;
  }
  print("$_name $_age");
}
