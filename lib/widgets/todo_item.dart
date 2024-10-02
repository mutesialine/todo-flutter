import 'package:flutter/material.dart';
import "package:todo/model/todo.dart";

class TodoItem extends StatelessWidget {
  final ToDo todo;
  const TodoItem({Key? key, required this.todo}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 20),
        child: ListTile(
            onTap: () {
              print("clicked on the button");
            },
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            tileColor: Colors.white,
            leading: Icon(todo.isDone ? Icons.check_circle : Icons.circle,
                color: const Color.fromARGB(255, 9, 97, 169)),
            title: Text(todo.title!,
                style: (TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    decoration:
                        todo.isDone ? TextDecoration.lineThrough : null))),
            trailing: Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 189, 23, 11),
                    borderRadius: BorderRadius.circular(50)),
                child: IconButton(
                    iconSize: 18,
                    color: Colors.white,
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      print("clicked on the button");
                    }))));
  }
}
