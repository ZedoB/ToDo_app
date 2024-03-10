import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_zedo/cubit/task_cubit.dart';

class TasksListView extends StatelessWidget {
  TasksListView({super.key});

  List<String> allTasks = [];
  @override
  Widget build(BuildContext context) {

    return BlocBuilder<TaskCubit, TaskState>(
      builder: (context, state) {
        allTasks = BlocProvider.of<TaskCubit>(context).getTasks();
        if (state is TaskSuccess) {
          return ListView.builder(
            itemBuilder: (context, index) {
              return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(allTasks[index]),
                    )
                  )
              );
            },itemCount: allTasks.length,);
        }
        else if(state is TaskFailure){
          return Center(child: Text(state.emptyMsg, style: const TextStyle(
            color: Colors.black, fontSize: 32, fontWeight: FontWeight.bold
          ),));
        }
        else{
          return const Center(child: CircularProgressIndicator(),);
        }
      },
    );
  }
}
