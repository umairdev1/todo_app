import 'package:flutter/material.dart';
import 'package:todo_app/model/list_model.dart';

class Addtodo extends StatefulWidget {
  const Addtodo({Key? key}) : super(key: key);

  @override
  _AddtodoState createState() => _AddtodoState();
}

class _AddtodoState extends State<Addtodo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        actionsIconTheme: const IconThemeData(color: Colors.black),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.push_pin_outlined,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_outlined,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.dashboard_outlined,
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 100,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            color: Colors.blue.withOpacity(0.5),
            spreadRadius: 2.0,
            blurRadius: 8.0,
          )
        ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Spacer(),
                InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blue.withOpacity(0.5),
                            spreadRadius: 2.0,
                            blurRadius: 8.0,
                          )
                        ]),
                    padding: const EdgeInsets.all(10.0),
                    child: const Icon(
                      Icons.check,
                    ),
                  ),
                ),
                Spacer(),
                Row(
                  children: List.generate(
                      products.length, (index) => colorSelection(index)),
                ),
                Spacer(),
              ],
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            //title
            TextFormField(
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
              decoration: const InputDecoration(
                hintText: "Enter title",
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
              ),
            ),

            TextFormField(
              style: const TextStyle(fontSize: 16, color: Colors.black),
              decoration: const InputDecoration(
                hintText: "Enter description",
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding colorSelection(int index) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
              color: products[index].color,
              borderRadius: BorderRadius.circular(10.0)),
        ),
      ),
    );
  }
}
