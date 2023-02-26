import 'dart:convert';

import 'package:api_assignment/api_functions/functions.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class Shopping_Bag extends StatefulWidget {
  @override
  State<Shopping_Bag> createState() => _Shopping_BagState();
}

class _Shopping_BagState extends State<Shopping_Bag> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(210, 178, 240, 255),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'My Bag',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Expanded(flex: 0, child: Text('Check and Pay Your Shoes')),
          ),
          Expanded(
            child: FutureBuilder<http.Response>(
              future: getAll(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  var data = jsonDecode(snapshot.data!.body);
                  return ListView.builder(
                    itemCount: data.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      
                      return ListView.builder(
                        itemCount: data[index]["shoes"].length,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index2) {
                          if (data[index]['shoes'][index2]["isFav"] == true) {
                            return Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: InkWell(
                                child: Card(
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                  child: Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(data[index]['shoes'][index2]
                                              ['name']),
                                          Text(data[index]['shoes'][index2]
                                                  ['price']
                                              .toString()),
                                          Row(
                                            children: [
                                              IconButton(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.remove,
                                                  size: 16,
                                                ),
                                                color: Colors.grey,
                                              ),
                                              Text(
                                                '1',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w900),
                                              ),
                                              IconButton(
                                                  onPressed: () {},
                                                  icon: Icon(
                                                    Icons.add,
                                                    size: 16,
                                                  ),
                                                  color: Colors.grey),
                                              Text(
                                                '|',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w900),
                                              ),
                                              SizedBox(
                                                width: 10, // <-- SEE HERE
                                              ),
                                              Text(
                                                '43',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w900),
                                              ),
                                              IconButton(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.keyboard_arrow_down,
                                                ),
                                                color: Colors.grey,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Expanded(
                                        child: Column(
                                          children: [
                                            Image.network(
                                              data[index]["shoes"][index2]
                                                  ["img"],
                                              height: 95,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                onTap: () {},
                              ),
                            );
                          }
                        },
                      );
                    },
                  );
                } else {
                  return CircularProgressIndicator();
                }
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              child: Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "3 items",
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text('\$545'),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: Colors.cyan,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              child: Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Checkout',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.white),
                        ))
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
