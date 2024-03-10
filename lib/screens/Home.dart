import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_zedo/widgets/tasks_list_view.dart';
import '../cubit/task_cubit.dart';
import '../widgets/add_button.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskCubit, TaskState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.amber,
            title: const Center(child: Text('Todos', style: TextStyle(color: Colors.white),)),
          ),
          body: TasksListView(),
          floatingActionButton: const AddButton(),
        );
      },
    );
  }
}
