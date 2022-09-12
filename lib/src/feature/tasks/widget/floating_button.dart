import 'package:flutter/material.dart';

class TasksFloatButton extends StatelessWidget {
  const TasksFloatButton({Key? key, this.onPressed}) : super(key: key);
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: onPressed);
  }
}
