import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_guru_app/models/item.dart';

class CatalogScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 1.5),
            itemCount: 3,
            itemBuilder: (BuildContext context, int index) {
              return Center(
                child: Stack(
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      child: Image.network(
                        Item.items[3].imageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(Item.items[3].name)
                  ],
                ),
              );
            }));
  }
}
