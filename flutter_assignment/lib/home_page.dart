import 'package:flutter/material.dart';
import 'package:flutter_assignment/shoes_1.dart';

import 'shoes_2.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          margin: EdgeInsets.only(left: 25, right: 25, top: 30),
          height: 55,
          width: 350,
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
        // Container(
        //   child: TextField(
        //     decoration: InputDecoration(
        //       hintText: 'Find shoes',
        //       filled: true,
        //       fillColor: Colors.white,
        //
        //       // suffixIcon: Icon(Icons.search_sharp)
        //       enabledBorder: OutlineInputBorder(
        //           borderRadius: BorderRadius.all(Radius.circular(25.0)),
        //           borderSide: BorderSide(
        //             color: Colors.transparent,
        //           )),
        //       focusedBorder: OutlineInputBorder(
        //         borderRadius: BorderRadius.all(Radius.circular(30.0)),
        //         borderSide: BorderSide(color: Colors.transparent),
        //       ),
        //
        //     ),
        //   ),
        //
        // ),
        Container(
            alignment: Alignment.topLeft,
            child: const Padding(
              padding: EdgeInsets.only(
                top: 30,
                left: 30,
              ),
              child: Text(
                "Categories",
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 40),
              ),
            )),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(
              right: 20,
              left: 20,
              top: 15,
              bottom: 20,
            ),
            child: Row(children: [
              TextButton(
                onPressed: () {},
                child: const Text('Nike',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
              ),
              const SizedBox(
                width: 10,
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Adidas',
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold)),
              ),
              const SizedBox(
                width: 10,
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Puma',
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold)),
              ),
              const SizedBox(
                width: 10,
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Balenciaga',
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold)),
              ),
              const SizedBox(
                width: 10,
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Converse',
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold)),
              )
            ]),
          ),
        ),
        Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 10),
                  child: Container(
                    height: 170,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              blurRadius: 10,
                              offset: Offset(0, 3))
                        ]),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return const Shoes_1();
                              },
                            ));
                          },
                          child: Container(
                            padding: EdgeInsets.only(top: 0),
                            width: 150,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Text(
                                        '\$180',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w900),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 49),
                                      child: IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.favorite_border_outlined,
                                            color: Colors.red,
                                          )),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Image(
                                        image: NetworkImage(
                                            "https://di2ponv0v5otw.cloudfront.net/posts/2022/08/11/62f5c18b3e37e36758dc99b3/s_62f5c18b3e37e36758dc99b4.jpeg"),
                                        width: 130,
                                        height: 80,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Nike Jordan \'Why',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Not?\' Zer0.3 PF',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20,top: 10),
                  child: Container(
                    height: 170,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              blurRadius: 10,
                              offset: Offset(0, 3))
                        ]),
                    child: Row(
                      children: [
                        InkWell(
                          // onTap: (){
                          //   Navigator.of(context).push(MaterialPageRoute(builder: (context){
                          //     return Screen_2();
                          //   }));
                          // },
                          child: Container(
                            padding: EdgeInsets.only(top: 0),
                            width: 150,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Text(
                                        '\$175',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w900),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 49),
                                      child: IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                              Icons.favorite_border_outlined,
                                              color: Colors.red)),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Image(
                                        image: NetworkImage(
                                            "https://image.goat.com/attachments/product_template_additional_pictures/images/043/452/136/medium/664481_03.jpg.jpeg?1601917291"),
                                        width: 130,
                                        height: 80,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Nike Joyride CC3',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Setter',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 20),
                  child: Container(
                    height: 170,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              blurRadius: 10,
                              offset: Offset(0, 3))
                        ]),
                    child: Row(
                      children: [
                        InkWell(
                          // onTap: (){
                          //   Navigator.of(context).push(MaterialPageRoute(builder: (context){
                          //     return Screen_2();
                          //   }));
                          // },
                          child: Container(
                            padding: EdgeInsets.only(top: 0),
                            width: 150,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Text(
                                        '\$190',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w900),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 49),
                                      child: IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                              Icons.favorite_border_outlined,
                                              color: Colors.red)),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Image(
                                        image: NetworkImage(
                                            "https://cdn.shopify.com/s/files/1/0562/8631/4662/products/BV5502-600_ff26a080-305f-4a85-a4f0-a6a1cb362743.jpg?v=1630915222"),
                                        width: 130,
                                        height: 80,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Nike Jordan',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Aerospace 720',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 20),
                  child: Container(
                    height: 170,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              blurRadius: 10,
                              offset: Offset(0, 3))
                        ]),
                    child: Row(
                      children: [
                        InkWell(
                          // onTap: (){
                          //   Navigator.of(context).push(MaterialPageRoute(builder: (context){
                          //     return Screen_2();
                          //   }));
                          // },
                          child: Container(
                            padding: EdgeInsets.only(top: 0),
                            width: 150,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Text(
                                        '\$190',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w900),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 49),
                                      child: IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.favorite_border_outlined,
                                            color: Colors.grey,
                                          )),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Image(
                                        image: NetworkImage(
                                            "https://media.endclothing.com/media/f_auto,w_600,h_600/prodmedia/media/catalog/product/A/i/Air-Jordan-7-Retro---Neutral-Grey-Summit-White---_CT8528-002_2_1.jpg"),
                                        width: 130,
                                        height: 80,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Nike Air Jordan',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Retro 7 SE',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ]),
      backgroundColor: const Color.fromARGB(210, 178, 240, 255),
    );
  }
}
