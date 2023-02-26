import 'dart:convert';

import 'package:flutter/cupertino.dart';

import 'package:http/http.dart' as http;

Future<http.Response> getAll() async {
  var res = await http
      .get(Uri.parse('https://6319e81d6b4c78d91b473697.mockapi.io/ShoesApi'));

  return res;
}

// Future<void> updateData(id,data) async {
//   Map map = {};
//   map["categories"]=data["categories"];
//   map["shoes"]=data["shoes"];
//   print(map);
//   // var res = await http.put(Uri.parse('https://6319e81d6b4c78d91b473697.mockapi.io/ShoesApi'),body: map);
// }
Future<http.Response> getById(id) async {
  var res = await http.get(
      Uri.parse('https://6319e81d6b4c78d91b473697.mockapi.io/ShoesApi/$id'));

  return res;
}

Future<http.Response> deleteData(id) async {
  print(id);
  var res = await http.delete(
      Uri.parse('https://6319e81d6b4c78d91b473697.mockapi.io/ShoesApi/$id'));
  return res;
}

Future<void> insertData() async {
  Map map = {};
  map["name"] = nameController.text;
  map["img"] = imgController.text;
  map["price"] = priceController.text;
  map["isFav"] = favController.text;
  map["categories"] = categoriesController.text;

  var res1 = await http.post(
      Uri.parse('https://6319e81d6b4c78d91b473697.mockapi.io/ShoesApi'),
      body: map);
  print(res1.body);
}

Future<void> updateData(id) async {
  Map map = {};
  map["name"] = nameController.text;
  map["img"] = imgController.text;
  map["price"] = priceController.text;
  map["categories"] = categoriesController.text;

  var res1 = await http.put(
      Uri.parse('https://6319e81d6b4c78d91b473697.mockapi.io/ShoesApi/$id'),
      body: map);
  print(res1.body);
}

var nameController = TextEditingController();

var imgController = TextEditingController();

var priceController = TextEditingController();

var categoriesController = TextEditingController();

var favController = TextEditingController();

bool getBoolFromDynamic(data, index) {
  // print(data);
  print(index);
  try {
    return jsonDecode(data.body.toString())[index]['isFav'] as bool;
  } catch (e) {
    try {
      return jsonDecode(data.body.toString())[index]['isFav']
              .toString()
              .toLowerCase() ==
          'true';
    } catch (e) {
      return false;
    }
  }
}

Future<http.Response> updateFavorite(id, value) async {
  // print(id);
  print(value);
  Map<String, dynamic> map = {};
  map["isFav"] = value.toString();
  var res = await http.put(
      Uri.parse('https://638029948efcfcedacfe0228.mockapi.io/api/user/$id'),
      body: map);
  return res;
}
