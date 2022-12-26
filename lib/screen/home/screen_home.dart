import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:valuenotifier/screen/home/widgets/add_student_widgets.dart';
import 'package:valuenotifier/screen/home/widgets/list_student_widgets.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AddStudentwidget(),
            const Expanded(child: ListStudentwidget()),
          ],
        ),
      ),
    );
  }
}
