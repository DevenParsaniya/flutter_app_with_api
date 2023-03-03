import 'dart:convert';

import 'package:api_crud/pages/insert_data.dart';
import 'package:api_crud/pages/update_data.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Home_Page extends StatefulWidget {
  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Shoes',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              child: Icon(
                Icons.add,
                color: Colors.black,
                size: 25,
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return Insert_Data(null);
                  },
                )).then((value) => (value) {
                      if (value == true) {
                        setState(() {});
                      }
                    });
              },
            ),
          )
        ],
      ),
      body: FutureBuilder<dynamic>(
          builder: (context, snapshot) {
            if (snapshot.data != null && snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      InkWell(
                        onDoubleTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) {
                              return Update_Data(snapshot.data![index]);
                            },
                          )).then((value) => (value) {
                                if (value == true) {
                                  setState(() {});
                                }
                              });
                        },
                        child: Card(
                          color: Colors.cyan,
                          margin: EdgeInsets.only(
                              top: 10, bottom: 5, right: 10, left: 10),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(bottom: 10),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            topRight: Radius.circular(20)),
                                        child: Image.network(
                                          snapshot.data![index]['Image']
                                              .toString(),
                                          height: 200,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ],
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch),
                              Container(
                                margin: EdgeInsets.only(bottom: 15),
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 3,
                                      child: Container(
                                        margin: EdgeInsets.only(left: 15),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                                snapshot.data![index]['Name']
                                                    .toString(),
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.w500)),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Row(
                                              children: [
                                                Text(snapshot.data![index]
                                                        ['Price']
                                                    .toString()),
                                                InkWell(
                                                  child: Icon(
                                                      (!getBoolFromDynamic(
                                                              snapshot.data!,
                                                              index))
                                                          ? Icons
                                                              .favorite_border
                                                          : Icons.favorite,
                                                      color: Colors.amber),
                                                  onTap: () async {
                                                    http.Response res =
                                                        await updateFavorite(
                                                            (jsonDecode(snapshot
                                                                    .data!.body
                                                                    .toString())[
                                                                index]['id']),
                                                            !getBoolFromDynamic(
                                                                snapshot.data!,
                                                                index),
                                                            (jsonDecode(snapshot
                                                                    .data!.body
                                                                    .toString())[
                                                                index]));
                                                    if (res.statusCode == 200) {
                                                      setState(() {});
                                                    }
                                                  },
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                },
              );
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
          future: get_All()),
    );
  }

  Future<dynamic> get_All() async {
    http.Response res = await http
        .get(Uri.parse('https://6401e4293779a8626260508b.mockapi.io/shoes'));
    return jsonDecode(res.body);
  }

  bool getBoolFromDynamic(data, index) {
    try {
      return jsonDecode(data.body.toString())[index]['IsFav'] as bool;
    } catch (e) {
      try {
        return jsonDecode(data.body.toString())[index]['IsFav']
                .toString()
                .toLowerCase() ==
            'true';
      } catch (e) {
        return false;
      }
    }
  }

  Future<http.Response> updateFavorite(id, value, map) async {
    map["IsFav"] = value.toString();
    print(map);
    var response = await http.put(
        Uri.parse('https://6401e4293779a8626260508b.mockapi.io/shoes/$id'),
        body: map);
    return response;
  }
}
