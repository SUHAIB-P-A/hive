import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hive_implimentation/functions/db_functions.dart';
import 'package:hive_implimentation/model/data_model.dart';

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
              trailing: IconButton(
                onPressed: () {
                  if (data.id != null) {
                    deletestudentlist(data.id!);
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
