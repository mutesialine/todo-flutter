class ToDo {
  String? id;
  String? title;
  bool isDone;

  ToDo({
    required this.id,
    required this.title,
    this.isDone = false,
  });

  static List<ToDo> todoList() {
    return [
      ToDo(id: "1", title: "Check emails", isDone: true),
      ToDo(id: "2", title: "Buy groceries", isDone: false),
      ToDo(id: "3", title: "Call mom", isDone: false),
      ToDo(id: "4", title: "Meeting with team", isDone: true),
    ];
  }
}
