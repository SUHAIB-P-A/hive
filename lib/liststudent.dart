import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hive_implimentation/functions/db_functions.dart';
import 'package:hive_implimentation/homescreen.dart';
import 'package:hive_implimentation/model/data_model.dart';
import 'package:hive_implimentation/hivelogin.dart';

final updatecontroller = TextEditingController();
final updatecontroller1 = TextEditingController();


class liststd extends StatelessWidget {
  const liststd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: studentlistnotifier,
      builder: ((context, List<Student> studentlist, child) {
        return ListView.separated(
          itemBuilder: ((context, index) {
            final data = studentlist[index];
            return ListTile(
              title: Text(data.name),
              subtitle: Text(data.age),
              leading: IconButton(
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (ctx1) {
                        return Container(
                          height: 500,
                          width: double.infinity,
                          color: Colors.grey,
                          padding: const EdgeInsets.all(90),
                          child: Column(
                            children: [
                              TextFormField(
                                controller: updatecontroller,
                                decoration: const InputDecoration(
                                  label: Text("name"),
                                  border: OutlineInputBorder(),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              TextFormField(
                                controller: updatecontroller1,
                                decoration: const InputDecoration(
                                  label: Text("age"),
                                  border: OutlineInputBorder(),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              TextButton(
                                onPressed: () {
                                  final _name =updatecontroller.text.trim();
                                  final _age = updatecontroller1.text.trim();
                                  final _student = Student(
                                    name: _name,
                                    age: _age,
                                  );
                                  updatelist(index,_student);
                                },
                                child: const Text("UPDATE"),
                              ),
                            ],
                          ),
                        );
                      });
                },
                icon: const Icon(Icons.edit),
              ),
              trailing: IconButton(
                onPressed: () {
                  if (index != null) {
                    deletestudentlist(index);
                  } else {
                    print("student id is null :unable to delete");
                  }
                },
                icon: Icon(Icons.delete),
              ),
            );
          }),
          separatorBuilder: ((context, index) {
            return const Divider();
          }),
          itemCount: studentlist.length,
        );
      }),
    );
  }
}

