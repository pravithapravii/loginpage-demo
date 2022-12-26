import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:valuenotifier/db/functions/db_functions.dart';
import 'package:valuenotifier/db/model/data_model.dart';

class AddStudentwidget extends StatelessWidget {
  AddStudentwidget({super.key});

  final _namecontroller = TextEditingController();
  final _agecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          TextFormField(
            controller: _namecontroller,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Name',
            ),
          ),
          const SizedBox(height: 10),
          TextFormField(
            controller: _agecontroller,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Age',
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton.icon(
            onPressed: () {
              OnAddStudentButtonClicked();
            },
            icon: const Icon(Icons.add),
            label: const Text('Add Student'),
          )
        ],
      ),
    );
  }

  Future<void> OnAddStudentButtonClicked() async {
    final _name = _namecontroller.text.trim();
    final _age = _agecontroller.text.trim();
    if (_name.isEmpty || _age.isEmpty) {
      return;
    }
    print('$_name $_age');
    final _student = studentmodel(name: _name, age: _age);

    addstudent(_student);
  }
}
