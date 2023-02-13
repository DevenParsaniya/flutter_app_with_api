import 'package:flutter/material.dart';

class Shopping_Bag extends StatelessWidget {
  const Shopping_Bag({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(210, 178, 240, 255),
      body: Center(
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: const Text(
                  'My Bag',
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                ),
              ),
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 15),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 8, bottom: 8),
                child: const Text('Check and Pay Your Shoes'),
              ),
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 15),
            ),
            Padding(
              padding: const EdgeInsets.all(3),
              child: Card(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        children: [
                          Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'Nike Jorden Why Not? ZerO.3 PF',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(right: 170),
                                child: Text(
                                  '\$190',
                                  style: TextStyle(fontWeight: FontWeight.w900),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 30),
                            child: Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.remove,
                                    size: 16,
                                  ),
                                  color: Colors.grey,
                                ),

                                const Text(
                                  '1',
                                  style: TextStyle(fontWeight: FontWeight.w900),
                                ),

                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.add,
                                      size: 16,
                                    ),
                                    color: Colors.grey),

                                const Text(
                                  '|',
                                  style: TextStyle(fontWeight: FontWeight.w900),
                                ),
                                const SizedBox(
                                  width: 15, // <-- SEE HERE
                                ),
                                const Text(
                                  '43',
                                  style: TextStyle(fontWeight: FontWeight.w900),
                                ),

                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.keyboard_arrow_down,
                                  ),
                                  color: Colors.grey,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Image(
                          image: NetworkImage(
                            "https://di2ponv0v5otw.cloudfront.net/posts/2022/08/11/62f5c18b3e37e36758dc99b3/s_62f5c18b3e37e36758dc99b4.jpeg",

                          ),
                          height: 120,
                          width: 114,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3),
              child: Card(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        children: [
                          Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(left: 0,right: 55,top: 8,bottom: 8),
                                child: Text(
                                  'Nike Joyride CC3 Setter',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(right: 170),
                                child: Text(
                                  '\$175',
                                  style: TextStyle(fontWeight: FontWeight.w900),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 30),
                            child: Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.remove,
                                    size: 16,
                                  ),
                                  color: Colors.grey,
                                ),

                                const Text(
                                  '1',
                                  style: TextStyle(fontWeight: FontWeight.w900),
                                ),

                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.add,
                                      size: 16,
                                    ),
                                    color: Colors.grey),

                                const Text(
                                  '|',
                                  style: TextStyle(fontWeight: FontWeight.w900),
                                ),
                                const SizedBox(
                                  width: 15, // <-- SEE HERE
                                ),
                                const Text(
                                  '43',
                                  style: TextStyle(fontWeight: FontWeight.w900),
                                ),

                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.keyboard_arrow_down,
                                  ),
                                  color: Colors.grey,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Image(
                          image: NetworkImage(
                            "https://image.goat.com/attachments/product_template_additional_pictures/images/043/452/136/medium/664481_03.jpg.jpeg?1601917291",

                          ),
                          height: 120,
                          width: 117,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3),
              child: Card(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        children: [
                          Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(left: 8,right: 40,top: 8,bottom: 8),
                                child: Text(
                                  'Nike Jorden Aerospace 720',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(right: 170),
                                child: Text(
                                  '\$190',
                                  style: TextStyle(fontWeight: FontWeight.w900),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 30),
                            child: Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.remove,
                                    size: 16,
                                  ),
                                  color: Colors.grey,
                                ),

                                const Text(
                                  '1',
                                  style: TextStyle(fontWeight: FontWeight.w900),
                                ),

                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.add,
                                      size: 16,
                                    ),
                                    color: Colors.grey),

                                const Text(
                                  '|',
                                  style: TextStyle(fontWeight: FontWeight.w900),
                                ),
                                const SizedBox(
                                  width: 15, // <-- SEE HERE
                                ),
                                const Text(
                                  '43',
                                  style: TextStyle(fontWeight: FontWeight.w900),
                                ),

                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.keyboard_arrow_down,
                                  ),
                                  color: Colors.grey,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Image(
                          image: NetworkImage(
                            "https://cdn.shopify.com/s/files/1/0562/8631/4662/products/BV5502-600_ff26a080-305f-4a85-a4f0-a6a1cb362743.jpg?v=1630915222",

                          ),
                          height: 120,
                          width: 112.5,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(bottom: 2, right: 8, left: 8, top: 8),
              child: Card(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 11,right: 11,top: 8,bottom: 8),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Text(
                          '3 items',
                          style: TextStyle(
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 200),
                        child: Text(
                          '\$545',
                          style: TextStyle(fontWeight: FontWeight.w900),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80, right: 80, top: 10),
              child: Card(
                color: Colors.cyan,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50))),
                child: Padding(
                  padding: const EdgeInsets.only(top: 14, bottom: 14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          child: Text(
                        'Checkout',
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      )),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
