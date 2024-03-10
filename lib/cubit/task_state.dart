part of 'task_cubit.dart';
abstract class TaskState {}

class TaskInitial extends TaskState {}
class TaskSuccess extends TaskState {
  final List<String> tasks;
  TaskSuccess(this.tasks);
}
class TaskFailure extends TaskState {
  final String emptyMsg;
  TaskFailure(this.emptyMsg);
}
class TaskLoading extends TaskState {}
