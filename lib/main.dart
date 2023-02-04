import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hive_implimentation/hivelogin.dart';

main() {
  runApp(hiveapp());
}

class hiveapp extends StatelessWidget {
  const hiveapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 7, 255, 205)
      ),
      home: const loginscr(),
    );
  }
}