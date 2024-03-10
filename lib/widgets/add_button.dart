import 'package:flutter/material.dart';
import '../screens/task.dart';

class AddButton extends StatelessWidget {
  const AddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.amber,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Task()),
        );
      },
      child: const Icon(Icons.add, color: Colors.white,),
    );
  }
}
