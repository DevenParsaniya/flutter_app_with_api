import 'package:api_crud/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Insert_Data extends StatefulWidget {
  Insert_Data(this.map);
  Map? map;

  @override
  State<Insert_Data> createState() => _Insert_DataState();
}

class _Insert_DataState extends State<Insert_Data> {
  var formkey = GlobalKey<FormState>();

  var NameController = TextEditingController();
  var ImageController = TextEditingController();
  var PriceController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Information",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              size: 25,
              color: Colors.black,
            )),
        backgroundColor: Colors.white,
      ),
      body: Form(
        key: formkey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(hintText: "Enter Shoes Name"),
                validator: (value) {
                  if (value != null && value.isEmpty) {
                    return "Enter Shoes Name";
                  }
                },
                controller: NameController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(hintText: "Enter Path of image"),
                validator: (value) {
                  if (value != null && value.isEmpty) {
                    return "Enter Path of image";
                  }
                },
                controller: ImageController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(hintText: "Enter Price"),
                validator: (value) {
                  if (value != null && value.isEmpty) {
                    return "Enter Price";
                  }
                },
                controller: PriceController,
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    if (formkey.currentState!.validate()) {
                      insert_data().then((value) => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Home_Page(),
                          )));
                    }
                  },
                  child: Text("Submit")),
            ),
          ],
        ),
      ),
    );
  }

  Future<dynamic> insert_data() async {
    Map map = {};
    map["Name"] = NameController.text;
    map["Image"] = ImageController.text;
    map["Price"] = PriceController.text;


    var response1 = await http.post(
        Uri.parse("https://6401e4293779a8626260508b.mockapi.io/shoes"),
        body: map);
    print(response1.body);
    return response1;
  }
}
