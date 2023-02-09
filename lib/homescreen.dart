import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hive_implimentation/functions/db_functions.dart';
import 'package:hive_implimentation/hivelogin.dart';
import 'package:hive_implimentation/liststudent.dart';

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    getstudentlist();
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            loginscr(),
            const Expanded(child: liststd()),
          ],
        ),
      ),
    );
  }
}