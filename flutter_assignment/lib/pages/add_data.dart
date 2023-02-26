import 'package:flutter/material.dart';

import '../api_functions/functions.dart';

class Add_Data extends StatefulWidget {
  Map? map;

  Add_Data(this.map) {
    print(map!['shoes']);
    // print(map);
  }

  @override
  State<Add_Data> createState() => _Add_DataState();
}

class _Add_DataState extends State<Add_Data> {
  var formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    categoriesController.text = widget.map!["categories"];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(210, 178, 240, 255),
      body: Form(
          key: formKey,
          child: Column(children: [
            TextFormField(
              decoration: InputDecoration(hintText: 'Enter Categories name'),
              validator: (value) {
                if (value != null && value.isEmpty) {
                  return "Enter valid Categories name";
                }
              },
              controller: categoriesController,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: widget.map!["shoes"].length,
              itemBuilder: (context, index) {
                nameController.text = widget.map!["shoes"][index]["name"];
                imgController.text = widget.map!["shoes"][index]["img"];
                priceController.text = widget.map!["shoes"][index]["price"];
                favController.text = widget.map!["shoes"][index]["isFav"];
                return Column(
                  children: [
                    TextFormField(
                        decoration: InputDecoration(
                            hintText: 'Enter Name of the shoes'),
                        validator: (value) {
                          if (value != null && value.isEmpty) {
                            return "Enter valid Name";
                          }
                        },
                        controller: nameController),
                    TextFormField(
                      decoration: InputDecoration(hintText: 'Enter IMG Path'),
                      validator: (value) {
                        if (value != null && value.isEmpty) {
                          return "Enter valid IMG Path";
                        }
                      },
                      controller: imgController,
                    ),
                    TextFormField(
                        decoration:
                            InputDecoration(hintText: 'Enter price of shoes'),
                        validator: (value) {
                          if (value != null && value.isEmpty) {
                            return "Enter valid price of shoes";
                          }
                        },
                        controller: priceController),
                    TextFormField(
                        decoration:
                            InputDecoration(hintText: 'Enter favorite or not (true of false)'),
                        validator: (value) {
                          if (value != null && value.isEmpty) {
                            return "Enter valid value";
                          }
                        },
                        controller: favController),
                  ],
                );
              },
            ),
            TextButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    if (widget.map == null) {
                      insertData()
                          .then((value) => Navigator.of(context).pop(true));
                    } else {
                      updateData(widget.map!['shoes'].toString())
                          .then((value) => Navigator.of(context).pop(true));
                    }
                  }
                },
                child: Text('Submit'))
          ])),
    );
  }
}
