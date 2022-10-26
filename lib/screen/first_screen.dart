// ignore_for_file: implementation_imports, camel_case_types, unnecessary_import

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class First_screen extends StatefulWidget {
  const First_screen({super.key});

  @override
  State<First_screen> createState() => _First_screenState();
}

class _First_screenState extends State<First_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
    );
  }
}
