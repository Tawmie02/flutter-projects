import 'package:flutter/material.dart';
import 'package:todo_list/models/todo.dart';

class ToDoItem extends StatelessWidget {
    final Todo todo;
    
    const ToDoItem({super.key,required this.todo});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.only(bottom:20),
      child: ListTile(
        onTap: () {
          print('Clicked to do item');
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),

        tileColor: Colors.white,
        leading: Icon(Icons.check_box, color: Colors.blue),
        title: Text(
          'Todo.todoText',
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
            decoration: TextDecoration.lineThrough,
          ),
        ),
        trailing: Container(
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.all(8),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            color: Colors.white,
            iconSize: 18,
            icon: Icon(Icons.delete),
            onPressed: () {
              print('clicked delete icon');
            },
          ),
        ),
      ),
    );
  }
}
