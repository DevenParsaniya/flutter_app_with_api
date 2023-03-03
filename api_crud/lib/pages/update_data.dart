import 'package:api_crud/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Update_Data extends StatefulWidget {
  Map? map;

  Update_Data(this.map);

  @override
  State<Update_Data> createState() => _Update_DataState();
}

class _Update_DataState extends State<Update_Data> {
  var formkey = GlobalKey<FormState>();

  var NameController = TextEditingController();
  var ImageController = TextEditingController();
  var PriceController = TextEditingController();

  @override
  void initState() {
    super.initState();
    print(widget.map);
    // NameController.text = widget.map == null ? '' : widget.map!['Name'];
    // ImageController.text = widget.map == null ? '' : widget.map!['Image'];
    // PriceController.text = widget.map == null ? '' : widget.map!['Price'];
    NameController.text = widget.map!["Name"].toString();
    ImageController.text = widget.map!["Image"].toString();
    PriceController.text = widget.map!["Price"].toString();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: ,
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
                decoration: InputDecoration(hintText: "Enter Shoes name"),
                validator: (value) {
                  if (value != null && value.isEmpty) {
                    return "Enter Shoes name";
                  }
                },
                controller: NameController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(hintText: "Enter path of Image"),
                validator: (value) {
                  if (value != null && value.isEmpty) {
                    return "Enter path of Image";
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
                    return "Enter price";
                  }
                },
                controller: PriceController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        onPressed: () {
                          if (formkey.currentState!.validate()) {
                            if (widget.map != null) {
                              update_data(widget.map!["id"]).then((value) =>
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Home_Page(),
                                  )));
                            }
                          }
                        },
                        child: Text("Update")),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red),
                        onPressed: () {
                          showDeleteAlert(widget.map!['id']);
                        },
                        child: Text("Delete",
                            style:
                                TextStyle(color: Colors.white, fontSize: 15))),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  //update_operation

  Future<dynamic> update_data(id) async {
    Map map = {};
    map["Name"] = NameController.text;
    map["Image"] = ImageController.text;
    map["Price"] = PriceController.text;

    var response1 = await http.put(
        Uri.parse("https://6401e4293779a8626260508b.mockapi.io/shoes/$id"),
        body: map);
    print(response1.body);
  }

  //delete_operation

  void showDeleteAlert(id) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Are you sure !!!"),
          content: Text("it will be delete parmanetaly"),
          actions: [
            TextButton(
                onPressed: () async {
                  http.Response res = await delete_data(id);
                  if (res.statusCode == 200) {
                    setState(() {});
                  }
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Home_Page(),
                  ));
                },
                child: Text("Yes")),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("No"))
          ],
        );
      },
    );
  }

  Future<dynamic> delete_data(id) async {
    var response1 = await http.delete(
        Uri.parse("https://6401e4293779a8626260508b.mockapi.io/shoes/$id"));
    print(response1.body);
    return response1;
  }
}
