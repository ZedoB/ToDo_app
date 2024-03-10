import 'package:flutter_bloc/flutter_bloc.dart';
part 'task_state.dart';

class TaskCubit extends Cubit<TaskState> {
  TaskCubit() : super(TaskInitial());

  final List<String> tasks = [];

  void setTasks({required String task}){
    tasks.add(task);
  }

  List<String> getTasks(){
    emit(TaskLoading());

    if(tasks.isEmpty){
      emit(TaskFailure('No tasks yet'));
    }
    else{
      emit(TaskSuccess(tasks));
    }

    return tasks;

  }
}
