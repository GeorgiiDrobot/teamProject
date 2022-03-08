import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_guru_app/catalog_screen.dart';
import 'package:home_guru_app/widgets/navbar.dart';

import 'models/category.dart';
import 'models/item.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              Container(
                decoration: BoxDecoration(
                    color: Color.fromRGBO(219, 240, 212, 1),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(40),
                        bottomLeft: Radius.circular(40))),
                height: 150,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 125, left: 45),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(color: Color.fromRGBO(20, 99, 86, 1))),
                  height: 50,
                  width: 300,
                ),
              )
            ]),
            SizedBox(
              height: 20,
            ),
            Container(
                child: CarouselSlider(
              options: CarouselOptions(
                aspectRatio: 2.0,
                enlargeCenterPage: true,
                enableInfiniteScroll: false,
                initialPage: 2,
                autoPlay: true,
              ),
              items: Category.categories
                  .map((category) => CarouselCards(category: category))
                  .toList(),
            )),
            Padding(
                padding: const EdgeInsets.all(15.0),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Popular Items',
                      style: TextStyle(
                          fontSize: 30, color: Color.fromRGBO(20, 99, 86, 1)),
                    ))),
            Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15),
                child: Align(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Stack(
                              children: [
                                Container(
                                  width: 150,
                                  height: 150,
                                  child: Image.network(
                                    Item.items[0].imageUrl,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Text(Item.items[0].name)
                              ],
                            ),
                            Stack(
                              children: [
                                Container(
                                  width: 150,
                                  height: 150,
                                  child: Image.network(
                                    Item.items[1].imageUrl,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Text(Item.items[1].name)
                              ],
                            ),
                          ],
                        ),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Recently Viewed',
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Color.fromRGBO(20, 99, 86, 1)),
                            )),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Stack(
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
                            Stack(
                              children: [
                                Container(
                                  width: 150,
                                  height: 150,
                                  child: Image.network(
                                    Item.items[2].imageUrl,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Text(Item.items[2].name)
                              ],
                            ),
                          ],
                        ),
                      ],
                    ))),

            //NavBar()
          ],
        ),
      ),
    );
  }
}

class CarouselCards extends StatelessWidget {
  final Category category;

  const CarouselCards({
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => CatalogScreen()));
      },
      child: Container(
        margin: EdgeInsets.all(5.0),
        child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            child: Stack(
              children: <Widget>[
                Image.network(category.imageUrl,
                    fit: BoxFit.cover, width: 1000.0),
                Positioned(
                  bottom: 0.0,
                  left: 0.0,
                  right: 0.0,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(200, 0, 0, 0),
                          Color.fromARGB(0, 0, 0, 0)
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
                    padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    child: Text(
                      category.name,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
