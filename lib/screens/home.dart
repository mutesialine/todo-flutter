import 'package:flutter/material.dart';
import 'package:todo/constants/colors.dart';
import 'package:todo/widgets/todo_item.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor,
      appBar: _buildAppBar(),
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Column(
            children: [
              searchBox(),
              Expanded(
                child: ListView(
                  children: [
                    
                    Container(
                        margin: EdgeInsets.only(top: 50, bottom: 20),
                        child: Text("All todos",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold))),
                    TodoItem(),
                    TodoItem(),
                    TodoItem(),
                    TodoItem(),
                  ],
                ),
              ),
            ],
          )),
    );
  }

  Widget searchBox() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(0),
            hintText: 'Search',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
            border: InputBorder.none,
            prefixIcon: Icon(Icons.search, color: Colors.grey, size: 20),
            prefixIconConstraints: BoxConstraints(maxWidth: 20, minHeight: 25),
          ),
        ));
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: primaryColor,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.menu, color: secondaryColor, size: 30),
          Container(
            height: 40,
            width: 40,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset('assets/images/avatar.jpg'),
            ),
          ),
        ],
      ),
    );
  }
}
