import 'dart:convert';

import 'package:api_assignment/pages/add_data.dart';
import 'package:api_assignment/pages/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../api_functions/functions.dart';

class Home_Page extends StatefulWidget {
  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  List<dynamic> whichCategories = [];
  String nameCategories = "";
  List<dynamic> datafinal = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(210, 178, 240, 255),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Find shoes',
                  filled: true,
                  fillColor: Colors.white,
                  suffixIcon: Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.cyanAccent,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Icon(
                          Icons.search_sharp,
                          color: Colors.white,
                          size: 25,
                        )),
                  ),
                  // suffixIcon: Icon(Icons.search_sharp)
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      )),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
              child: Container(
            alignment: Alignment.topLeft,
            child: Text(
              "Categories",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 40,
              ),
            ),
          )),
          Expanded(
            // flex: 4,
            child: FutureBuilder<http.Response>(
              future: getAll(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  var data = jsonDecode(snapshot.data!.body);

                  // print('DATA:::$data');
                  return ListView.builder(
                    itemCount: data.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: InkWell(
                          child: Text(data[index]["categories"]),
                          onTap: () {
                            setState(() {
                              whichCategories = data[index]["shoes"];

                              nameCategories = data[index]["categories"];

                              // datafinal = data[index];
                            });
                          },
                        ),
                      );
                    },
                  );
                } else {
                  return CircularProgressIndicator();
                }
              },
            ),
          ),
          Expanded(
            flex: 4,
            child: GridView.builder(
              itemCount: whichCategories.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 4.0,
                  mainAxisSpacing: 4.0),
              itemBuilder: (context, index) {
                return InkWell(
                  onDoubleTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        print(whichCategories[index]);
                        return Add_Data(whichCategories[index]);
                      },
                    ));
                  },
                  onLongPress: () {
                    print(whichCategories[index]);
                    showDeleteAlert(whichCategories[index].toString());
                  },
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Detail_Page(
                            whichCategories[index], nameCategories);
                      },
                    ));
                  },
                  child: Card(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(whichCategories[index]['name'].toString()),
                            IconButton(
                              onPressed: () async {
                                // print(whichCategories[index]);
                                http.Response res = await updateFavorite(
                                    (whichCategories[index]),
                                    !getBoolFromDynamic(
                                        whichCategories[index], index));
                                if (res.statusCode == 200) {
                                  setState(() {});
                                }
                              },
                              // updateData(data[index]['id'], data);
                              icon: Icon(
                                  (!getBoolFromDynamic(
                                          whichCategories[index], index))
                                      ? Icons.favorite_border
                                      : Icons.favorite,
                                  color: Colors.blueAccent),

                            ),
                          ],
                        ),
                        Expanded(
                          child: Image.network(
                            whichCategories[index]['img'],
                            height: 200,
                            width: 200,
                          ),
                        ),
                        Text(
                          whichCategories[index]['price'].toString(),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  void showDeleteAlert(id) {
    print(id);
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.red.shade300,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))),
          title: Text('Alert!'),
          content: Text('Are you sure want to delete this record?'),
          actions: [
            TextButton(
              onPressed: () async {
                http.Response res = await deleteData(id);
                if (res.statusCode == 200) {
                  setState(() {});
                }
                Navigator.of(context).pop();
              },
              child: Text(
                'Yes',
                style: TextStyle(color: Colors.green),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                'No',
                style: TextStyle(color: Colors.red),
              ),
            ),
          ],
        );
      },
    );
  }
}
