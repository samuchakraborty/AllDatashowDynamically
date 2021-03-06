import 'dart:convert';

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:datapassFlutter/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<String> _loadPhotoAssets() async {
    return await rootBundle.loadString("assets/product.json");
  }

  Future loadPhoto() async {
    String jsonString = await _loadPhotoAssets();
    final jsonResponse = json.decode(jsonString);

    AllProduct productList = new AllProduct.fromJson(jsonResponse);
    // print(photoList.photos[0].albumId);
    // print(photoList.photos[0].url);

    // print(photoList.data[0].name[0]);
    //print(photoList.message);

    // print(photoList.data[3].name);

    List<Data> products = [];

    for (var i = 0; i < productList.data.length; i++) {
      products.add(productList.data[i]);
      print(productList.data[i]);
    }
    // }

    // print(products.length);
    return products;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        //body: Text("hello"),

        body: Container(
          child: FutureBuilder(
              future: loadPhoto(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.data == null) {
                  return Container(
                    child: Center(
                      child: Text("Loading"),
                    ),
                  );
                } else {
                  return GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                    itemCount: snapshot.data.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        child: Stack(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height,
                              child: Column(
                                children: [
                                  Container(
                                    alignment: Alignment.topLeft,
                                    height: 15,
                                    child: Text(
                                      "Sale",
                                      style: TextStyle(
                                        backgroundColor: Colors.green,
                                      ),
                                    ),
                                  ),

                                  Container(
                                    child: Column(
                                      children: [
                                        Image.network(
                                          "https://test.anazbd.com/" +
                                              snapshot.data[index].featureImage,
                                          fit: BoxFit.contain,
                                          height: 100,
                                          width: 150,
                                        ),
                                        Text(
                                          snapshot.data[index].name,
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        // Text("TK: " +
                                        //     (snapshot.data[index].originalPrice)
                                        //         .toString()),
                                      ],
                                    ),

                                    // leading: Image.network("https://test.anazbd.com/" +
                                    //     snapshot.data[index].featureImage),
                                  ),


                                  Container(
                                    alignment: Alignment.topLeft,
                                   child: Text("TK: " +
                                              (snapshot.data[index].originalPrice)
                                                  .toString()),
                                 ),

                                  // Container(
                                  //   alignment: Alignment.center,
                                  //   height: 10,
                                  //   padding: EdgeInsets.all(1),
                                  //   child: Text(
                                  //     snapshot.data[index].name,
                                  //     style: TextStyle(fontSize: 10),
                                  //   ),
                                  // ),
                                  // Container(
                                  //   alignment: Alignment.center,
                                  //   padding: EdgeInsets.all(5),
                                  //   child: Text("TK: " +
                                  //       (snapshot.data[index].originalPrice)
                                  //           .toString()),
                                  // ),

                                  // Expanded(
                                  //   flex: 1,
                                  //   child: Container(
                                  //     alignment: Alignment.bottomRight,
                                  //     padding: EdgeInsets.all(6),
                                  //     child:  IconButton(
                                  //     onPressed: () {},
                                  //     icon: Icon(EvaIcons.plus)),
                                  //   ),
                                  // ),
                                ],
                                 
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                }
              }),
        ),
      ),
    );
  }
}
