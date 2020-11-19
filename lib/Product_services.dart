import 'dart:async' show Future;
import 'package:datapassFlutter/product_model.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

Future<String> _loadPhotoAssets() async {
  return await rootBundle.loadString("assets/product.json");
}

Future loadPhoto() async {
  String jsonString = await _loadPhotoAssets();
  final jsonResponse = json.decode(jsonString);

  AllProduct photoList = new AllProduct.fromJson(jsonResponse);
  // print(photoList.photos[0].albumId);
  // print(photoList.photos[0].url);

 // print(photoList.data[0].name[0]);
  print(photoList.message);
 
 
 
 // print(photoList.data[3].name);

for (var i = 0; i < photoList.data.length; i++) {  
    print(photoList.data[i].name);
    }
}








