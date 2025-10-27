import 'package:flutter/material.dart';
import 'package:todo_list/widgets/todo_item.dart';
import 'package:todo_list/models/todo.dart';

class HomePage extends StatelessWidget {
    HomePage({super.key});

  final todosList = Todo.todosList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 215, 217, 221),
      appBar: _buildAppBar(),

      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          children: [
            searchBox(),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 50, bottom: 20),
                    child: Text(
                      'All Todos',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),

                  for(Todo todo in todosList)
                  ToDoItem(todo: todo),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget searchBox() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(20),
          prefixIcon: Icon(Icons.search, color: Colors.black, size: 20),
          prefixIconConstraints: BoxConstraints(minHeight: 20, minWidth: 25),
          border: InputBorder.none,
          hintText: 'Search',
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 215, 217, 221),

      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          Icon(Icons.menu, color: Colors.black, size: 20),
          SizedBox(
            height: 40,
            width: 40,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/images/christopher-campbell-rDEOVtE7vOs-unsplash.jpg',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
