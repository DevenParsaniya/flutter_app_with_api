import 'package:api_assignment/pages/add_data.dart';
import 'package:api_assignment/pages/home_page.dart';
import 'package:api_assignment/pages/shopping_bag.dart';
import 'package:flutter/material.dart';

class Main_File extends StatefulWidget {
  const Main_File({Key? key}) : super(key: key);

  @override
  State<Main_File> createState() => _Main_FileState();
}

class _Main_FileState extends State<Main_File> {
  int SelectedIndex = 0;
  int _selectedIndex = 0;
  List<Widget> widgetsList = [
    Home_Page(),
    Center(
      child: Container(
        child: Text(
          'This is chat page !!!',
          style: TextStyle(fontSize: 50),
        ),
      ),
    ),
    Center(
      child: Container(
        child: Text(
          'This is favourite page !!!',
          style: TextStyle(fontSize: 50),
        ),
      ),
    ),
    Shopping_Bag(),
    Container(
      child: Center(
          child: Text(
        'This is profile page !!!',
        style: TextStyle(fontSize: 50),
      )),
    ),
    // Add_Data(),
  ];



  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(210, 178, 240, 255),
        bottomOpacity: 0.0,
        elevation: 0.0,
        title: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: const Icon(
            Icons.menu_sharp,
            color: Colors.black,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 30),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://st3.depositphotos.com/3854637/19069/v/1600/depositphotos_190696810-stock-illustration-head-bearded-man-profile-portrait.jpg'),
            ),
          ),
        ],
      ),
      body: widgetsList[SelectedIndex],
      bottomNavigationBar: Container(
        color: Color.fromARGB(210, 178, 240, 255),
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(30),
              topLeft: Radius.circular(30),
            ),
            child:
                // Container(
                //   child: DecoratedBox(
                //     decoration: BoxDecoration(
                //       borderRadius: BorderRadius.all(Radius.circular(50))
                //     ),
                //
                //     child:
                BottomNavigationBar(
              currentIndex: _selectedIndex,
              unselectedItemColor: Colors.grey,
              selectedItemColor: Colors.cyan[800],
              onTap: (index2) {
                setState(
                  () {
                    SelectedIndex = index2;
                    _onItemTapped(index2);
                  },
                );
              },
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_outlined,
                  ),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.chat_bubble_outline,
                  ),
                  label: "",
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.favorite_border_outlined), label: ""),
                BottomNavigationBarItem(
                    icon: Icon(Icons.shopping_bag_outlined), label: ""),
                BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
                BottomNavigationBarItem(
                    icon: Icon(Icons.add_box_outlined), label: ""),
              ],
              backgroundColor: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
