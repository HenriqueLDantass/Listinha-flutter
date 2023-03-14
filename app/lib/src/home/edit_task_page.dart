import 'package:flutter/material.dart';

class EditTaskEdit extends StatefulWidget {
  const EditTaskEdit({super.key});

  @override
  State<EditTaskEdit> createState() => _EditTaskEditState();
}

class _EditTaskEditState extends State<EditTaskEdit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Editar lista",
        ),
      ),
    );
  }
}
