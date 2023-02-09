import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hive_implimentation/functions/db_functions.dart';
import 'package:hive_implimentation/model/data_model.dart';

final textcontroller = TextEditingController();
final textcontroller1 = TextEditingController();

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
              controller: textcontroller,
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
              controller: textcontroller1,
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
  final _name = textcontroller.text.trim();
  final _age = textcontroller1.text.trim();
  if (_name.isEmpty || _age.isEmpty) {
    return;
  }
  //print("$_name $_age");

  final _student = Student(name: _name, age: _age);
  addstudentlist(_student);
}
