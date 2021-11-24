import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/model/list_model.dart';

import 'components/bottombar.dart';
import 'components/custom_appbar.dart';
import 'components/list_button.dart';
import 'components/list_data.dart';
import 'components/searchbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: const CustomBottomBar(),
      body: SafeArea(
          child: ListView(
        children: const [
          // app bar seaction
          CustomAppBar(),
          //search section
          SearchBar(),
          ListButtonContainer(),
          // now we create add list data
// we are using grid inside column thats why we are facing error
// use  shrinkWrap and physics widget to solve this error
          Listdata(),
          // now we craete add list data page
        ],
      )),
    );
  }
}
