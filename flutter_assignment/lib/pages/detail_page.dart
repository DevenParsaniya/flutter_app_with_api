import 'package:api_assignment/main_file.dart';
import 'package:api_assignment/pages/shopping_bag.dart';
import 'package:flutter/material.dart';

class Detail_Page extends StatefulWidget {
  var data;
  var cat;

  Detail_Page(this.data, this.cat) {
    print(data);
  }

  @override
  State<Detail_Page> createState() => _Detail_PageState();
}

class _Detail_PageState extends State<Detail_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(210, 178, 240, 255),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.cyan,
                      borderRadius: BorderRadius.circular(40),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0),
                            blurRadius: 10,
                            offset: Offset(0, 3))
                      ]),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context)
                          .pop(MaterialPageRoute(builder: (context) {
                        return const Main_File();
                      }));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        size: 15,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://st3.depositphotos.com/3854637/19069/v/1600/depositphotos_190696810-stock-illustration-head-bearded-man-profile-portrait.jpg'),
                ),
              ],
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Column(
                    children: [
                      Text(widget.cat.toString()),
                      Text(widget.data["name"]),
                      Text('Men\'s Basketball Shoe'),
                    ],
                  ),
                  Row(
                    children: [
                      Text('1 / 7'),
                      SizedBox(
                        width: 25,
                      ),
                      IconButton(
                          onPressed: () {
                            // updateData(data[index]['id'], data);
                          },
                          icon: Icon(
                            Icons.favorite_border_outlined,
                            color: Colors.red,
                          )),
                    ],
                  ),
                  Row(
                    children: [
                      Image.network(
                        widget.data["img"],
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_circle_right_outlined,
                          color: Colors.cyanAccent,
                          size: 35,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.0),
                            topRight: Radius.circular(30.0)),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              blurRadius: 20,
                              offset: Offset(0, 3)),
                        ]),
                    child: Column(

                      children: [
                        Text(
                          'Description',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 21),
                          textAlign: TextAlign.justify,
                        ),
                        Text(
                          'One of the game\'s fiercest competitors, triple-double dynamo Russell Westbrook has the motor, muscle and mentality to match his fearlessness--with the stats to back it up.',
                          style: TextStyle(fontSize: 15),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.arrow_forward_ios_sharp,
                              size: 10,
                              color: Colors.cyan,
                            ),
                            Text(
                              'Retail Price  ',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              widget.data["price"].toString(),
                              style: TextStyle(fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.arrow_forward_ios_sharp,
                              size: 10,
                              color: Colors.cyan,
                            ),
                            Text('Est. Resell Price  ',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text('\$195 - \$250',
                                style: TextStyle(fontWeight: FontWeight.w900))
                          ],
                        ),
                        Row(
                          children: [
                            Row(
                              children: [
                                Text("Size"),
                                Text("Colour",textAlign: TextAlign.center),
                                Text("QYT")
                              ],
                            ),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "43",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.keyboard_arrow_down_sharp,
                                        color: Colors.cyan,
                                        size: 30,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.redAccent,
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.keyboard_arrow_down_sharp,
                                        color: Colors.cyan,
                                        size: 30,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                 crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      '1',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.keyboard_arrow_down_sharp,
                                        color: Colors.cyan,
                                        size: 30,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return Shopping_Bag();
                              },
                            ));
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50))),
                              color: Colors.cyan,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Add To Bag',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Icon(Icons.shopping_bag_outlined)
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
