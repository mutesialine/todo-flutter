import 'package:flutter/material.dart';

class TodoItem extends StatelessWidget {
  const TodoItem({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListTile(
            onTap: () {},
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            tileColor: Colors.white,
            leading: Icon(Icons.check_box,
                color: const Color.fromARGB(255, 9, 97, 169)),
            title: Text("Check emails",
                style: (TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.lineThrough))),
            trailing: Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 189, 23, 11),
                    borderRadius: BorderRadius.circular(50)),
                child: IconButton(
                    iconSize: 18,
                    color: Colors.white,
                    onPressed: () {},
                    icon: Icon(Icons.delete)))));
  }
}
