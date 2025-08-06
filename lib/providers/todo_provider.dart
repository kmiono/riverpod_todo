import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/todo.dart';

part 'todo_provider.g.dart';

@riverpod
class TodoNotifier extends _$TodoNotifier {
  @override
  List<Todo> build() {
    return [];
  }

  void addTodo(String title, String description) {
    final todo = Todo(
      id: DateTime.now().microsecondsSinceEpoch.toString(),
      title: title,
      description: description,
      createdAt: DateTime.now(),
    );
    state = [...state, todo];
  }

  void toggleTodo(String id) {
    state = state.map((todo) {
      if (todo.id == id) {
        return todo.copyWith(isCompleted: !todo.isCompleted);
      }
      return todo;
    }).toList();
  }

  void deleteTodo(String id) {
    state = state.where((todo) => todo.id != id).toList();
  }

  void updateTodo(String id, String title, String description) {
    state = state.map((todo) {
      if (todo.id == id) {
        return todo.copyWith(title: title, description: description);
      }
      return todo;
    }).toList();
  }
}

@riverpod
List<Todo> filterTodos(FiltertodosRef ref, String filter) {
  final todos = ref.watch(TodoNotifierProvider);

  switch (filter) {
    case 'completed':
      return todos.where((todo) => todo.isCompleted).toList();
    case 'pending':
      return todos.where((todo) => !todo.isCompleted).toList();
    default:
      return todos;
  }
}
