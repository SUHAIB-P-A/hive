import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class liststd extends StatelessWidget {
  const liststd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: ((context, index) {
        return ListTile(
          title: Text("name ${index + 1}"),
          subtitle: Text("age ${index + 1}"),
        );
      }),
      separatorBuilder: ((context, index) {
        return const Divider();
      }),
      itemCount: 50,
    );
  }
}
