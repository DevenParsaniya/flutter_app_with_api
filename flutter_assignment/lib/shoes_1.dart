import 'package:assignment_project/shopping_bag.dart';
import 'package:flutter/material.dart';


import 'home_page.dart';

class Shoes_1 extends StatelessWidget {
  const Shoes_1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                            .push(MaterialPageRoute(builder: (context) {
                          return const Home_Page();
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
                  Padding(
                    padding: const EdgeInsets.only(left: 200),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://st3.depositphotos.com/3854637/19069/v/1600/depositphotos_190696810-stock-illustration-head-bearded-man-profile-portrait.jpg'),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 356,
              child: Padding(
                padding: const EdgeInsets.only(left: 28.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                        child: Text(
                          'Nike',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        alignment: Alignment.centerLeft,
                      ),
                    ),
                    Container(
                      child: Text(
                        'Jordan \'Why Not?\'',
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 25),
                      ),
                      alignment: Alignment.centerLeft,
                    ),
                    Container(
                      child: Text(
                        'Zer0.3 PF',
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 25),
                      ),
                      alignment: Alignment.centerLeft,
                    ),
                    Container(
                      child: Text('Men\'s Basketball Shoe'),
                      alignment: Alignment.centerLeft,
                    ),
                    Container(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 0),
                            child: Text("1/7",
                                style: TextStyle(
                                    fontWeight: FontWeight.w900, fontSize: 18)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 25, top: 0),
                             child: IconButton(onPressed: () {

                             }, icon: Icon(
                               Icons.favorite_border,
                               color: Colors.red,
                               size: 22,
                             ),),

                          ),
                        ],
                      ),
                    ),
                    Builder(builder: (context) {
                      return SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Image.asset('assets/images/Shoes1.png',width: 311,height: 198,),
                            Image.asset('assets/images/Shoes1.png',width: 311,height: 198,),
                            Image.asset('assets/images/Shoes1.png',width: 311,height: 198,),
                            Image.asset('assets/images/Shoes1.png',width: 311,height: 198,),
                            Image.asset('assets/images/Shoes1.png',width: 311,height: 198,),
                            Image.asset('assets/images/Shoes1.png',width: 311,height: 198,),
                            Image.asset('assets/images/Shoes1.png',width: 311,height: 198,),
                            Image.asset('assets/images/Shoes1.png',width: 311,height: 198,),
                            // Image(
                            //   image: NetworkImage(
                            //     'https://sneakernews.com/wp-content/uploads/2020/01/jordan-why-not-zer0-3-unite-cd3003-101-5.jpg',
                            //   ),
                            //   width: 310,
                            //   height: 200,
                            // ),
                            // Image(
                            //   image: NetworkImage(
                            //       'https://sneakernews.com/wp-content/uploads/2020/01/jordan-why-not-zer0-3-unite-cd3003-101-5.jpg'),
                            //   width: 330,
                            //   height: 200,
                            // ),
                            // Image(
                            //   image: NetworkImage(
                            //       'https://sneakernews.com/wp-content/uploads/2020/01/jordan-why-not-zer0-3-unite-cd3003-101-5.jpg'),
                            //   width: 330,
                            //   height: 200,
                            // ),
                            // Image(
                            //   image: NetworkImage(
                            //       'https://sneakernews.com/wp-content/uploads/2020/01/jordan-why-not-zer0-3-unite-cd3003-101-5.jpg'),
                            //   width: 330,
                            //   height: 200,
                            // ),
                            // Image(
                            //   image: NetworkImage(
                            //       'https://sneakernews.com/wp-content/uploads/2020/01/jordan-why-not-zer0-3-unite-cd3003-101-5.jpg'),
                            //   width: 330,
                            //   height: 200,
                            // ),
                            // Image(
                            //   image: NetworkImage(
                            //       'https://sneakernews.com/wp-content/uploads/2020/01/jordan-why-not-zer0-3-unite-cd3003-101-5.jpg'),
                            //   width: 330,
                            //   height: 200,
                            // ),
                            // Image(
                            //   image: NetworkImage(
                            //       'https://sneakernews.com/wp-content/uploads/2020/01/jordan-why-not-zer0-3-unite-cd3003-101-5.jpg'),
                            //   width: 330,
                            //   height: 200,
                            // ),
                          ],
                        ),
                      );
                    }),
                    Icon(Icons.arrow_circle_right_outlined)
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 5),
              height: 348,
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
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 15, bottom: 0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8, top: 0),
                      child: Container(
                        child: Text(
                          'Description',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 21),
                        ),
                        alignment: Alignment.centerLeft,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8,left: 8,right: 6),
                      child: Container(
                          child: Text(
                              'One of the game\'s fiercest competitors, triple-double dynamo Russell Westbrook has the motor, muscle and mentality to match his fearlessness--with the stats to back it up.',style: TextStyle(fontSize: 15),)),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.arrow_forward_ios_sharp,
                            size: 10,
                            color: Colors.cyan,
                          ),
                        ),
                        Text('Retail Price  ',style: TextStyle(fontWeight: FontWeight.bold),),
                        Text('\$180',style: TextStyle(fontWeight: FontWeight.w900),)
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.arrow_forward_ios_sharp,
                            size: 10,
                            color: Colors.cyan,
                          ),
                        ),
                        Text('Est. Resell Price  ',style: TextStyle(fontWeight: FontWeight.bold)),
                        Text('\$195 - \$250',style: TextStyle(fontWeight: FontWeight.w900))
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 0, top: 5, right: 0, bottom: 10),
                      child: Card(
                        color: Color.fromARGB(210, 178, 240, 255),
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text("Size"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 80, right: 80),
                                  child: Text("Colour"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(7),
                                  child: Text("QYT"),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text(
                                    "43",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.keyboard_arrow_down_sharp,
                                    color: Colors.cyan,
                                    size: 30,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 35),
                                  child: CircleAvatar(
                                    backgroundColor: Colors.redAccent,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.keyboard_arrow_down_sharp,
                                    color: Colors.cyan,
                                    size: 30,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 35),
                                  child: Text(
                                    '1',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
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
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return const Shopping_Bag();
                            },
                          ));
                        },
                        child: Card(
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                          color: Colors.cyan,
                          child: Container(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 85, top: 15, bottom: 15),
                                      child: Container(
                                          child: Text(
                                        'Add To Bag',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      )),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 60,
                                        top: 15,
                                        bottom: 15,
                                      ),
                                      child: Container(
                                          child: Icon(
                                              Icons.shopping_bag_outlined)),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        backgroundColor: Color.fromARGB(250, 178, 240, 255),
      ),
    );
  }
}
