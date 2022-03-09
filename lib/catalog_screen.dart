import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_guru_app/models/item.dart';

class CatalogScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 1),
            itemCount: 2,
            itemBuilder: (BuildContext context, int index) {
              return Center(
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 120.0),
                  ),
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: NetworkImage(
                            "https://d2rbyiw1vv51io.cloudfront.net/web/ikea4/images/592/0959226_PE809439_S3.jpg"),
                        fit: BoxFit.cover),
                    border: Border.all(
                      color: Color.fromRGBO(20, 99, 86, 1),
                      width: 1,
                    ), //Border.all
                    borderRadius: BorderRadius.circular(15),
                  ),
                  width: 150,
                  height: 150,
                ),
              );
            }));
  }
}
