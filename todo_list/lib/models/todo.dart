class Todo {
  String? id;
  String? todoText;
  bool isDone;

  Todo({required this.id, required this.todoText, this.isDone = false});

  static List<Todo> todosList() {
    return [
      Todo(id: '01', todoText: 'Morning Exercise', isDone: true),
      Todo(id: '02', todoText: 'Buy Groceries', isDone: true),
      Todo(id: '03', todoText: 'Check Emails'),
      Todo(id: '04', todoText: 'Team Meeting at 11 AM'),
      Todo(id: '05', todoText: 'Lunch with Sarah'),
      Todo(id: '06', todoText: 'Project Work'),
      Todo(id: '07', todoText: 'Call Mom'),
      Todo(id: '08', todoText: 'Evening Walk'),
      Todo(id: '09', todoText: 'Read a Book'),
      Todo(id: '10', todoText: 'Plan for Tomorrow'),
    ];
  }
}
