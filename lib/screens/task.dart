import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_zedo/cubit/task_cubit.dart';

class Task extends StatelessWidget {
  Task({super.key});

  late String myTask = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: (){
            if(myTask.isNotEmpty){
              BlocProvider.of<TaskCubit>(context).setTasks(task: myTask);
            }
            Navigator.pop(context);
          },
        ),
      ),
      body: Expanded(
        child: TextField(
          // keyboardType: TextInputType.multiline,
          maxLines: 99999,
          scrollPadding: const EdgeInsets.all(20.0),
          autofocus: true,
          onChanged: (String task){
            myTask = task;
          },
        ),
      ),
    );
  }
}
