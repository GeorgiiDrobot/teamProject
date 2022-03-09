import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_guru_app/catalog_screen.dart';
import 'package:home_guru_app/detailed_item_card.dart';
import 'package:home_guru_app/widgets/navbar.dart';

import 'models/category.dart';
import 'models/item.dart';

class HomeScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
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
              Positioned(
                  top: 60,
                  left: 10,
                  child: IconButton(
                    iconSize: 30,
                    icon: const Icon(
                      Icons.menu,
                      color: Color.fromRGBO(20, 99, 86, 1),
                    ),
                    onPressed: () {
                      _scaffoldKey.currentState!.openDrawer();
                    },
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 125, left: 45),
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40),
                        border:
                            Border.all(color: Color.fromRGBO(20, 99, 86, 1))),
                    height: 50,
                    width: 300,
                    child: Padding(
                        padding: const EdgeInsets.only(right: 250),
                        child: Image.asset("image/search.png"))),
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
                      '   Popular Items',
                      style: TextStyle(
                          fontSize: 24, color: Color.fromRGBO(20, 99, 86, 1)),
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
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => DetailedItem()));
                              },
                              child: Container(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 120.0),
                                    child: Text(
                                      "ÄPPLARÖ",
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    image: const DecorationImage(
                                        image: NetworkImage(
                                            "https://d2rbyiw1vv51io.cloudfront.net/web/ikea4/images/306/0730621_PE737666_S3.jpg"),
                                        fit: BoxFit.cover),
                                    border: Border.all(
                                      color: Color.fromRGBO(20, 99, 86, 1),
                                      width: 1,
                                    ), //Border.all
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  width: 150,
                                  height: 150),
                            )
                          ],
                        ),
                        Stack(
                          children: [
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 120.0),
                                child: Text(
                                  "SMEDSTORP",
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                    image: NetworkImage(
                                        "https://d2rbyiw1vv51io.cloudfront.net/web/ikea4/images/898/0989830_PE818626_S3.jpg"),
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
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          '   Recently Viewed',
                          style: TextStyle(
                              fontSize: 24,
                              color: Color.fromRGBO(20, 99, 86, 1)),
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Stack(
                          children: [
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 120.0),
                                child: Text(
                                  "INDUCTION HOB",
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                    image: NetworkImage(
                                        "https://d2rbyiw1vv51io.cloudfront.net/web/ikea4/images/846/0984686_PE816365_S3.jpg"),
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
                          ],
                        ),
                        Stack(
                          children: [
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 120.0),
                                child: Text(
                                  "HAMARVIK",
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                    image: NetworkImage(
                                        "https://d2rbyiw1vv51io.cloudfront.net/web/ikea4/images/862/0786244_PE762930_S3.jpg"),
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
                          ],
                        ),
                      ],
                    ),
                  ],
                ))),
            SizedBox(
              height: 50,
            )

            //NavBar()
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              decoration:
                  BoxDecoration(color: Color.fromRGBO(219, 240, 212, 1)),
              accountName:
                  Text('Vadim Tere', style: TextStyle(color: Colors.black87)),
              accountEmail: Text('hello@email.com',
                  style: TextStyle(color: Colors.black87)),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.green[300],
                child: Text(
                  "VS",
                  style: TextStyle(fontSize: 40.0, color: Colors.black87),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.perm_identity, color: Colors.black87),
              title: const Text('Profile'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.notification_add, color: Colors.black87),
              title: const Text('Notifications'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.supervisor_account, color: Colors.black87),
              title: const Text('About us'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.help, color: Colors.black87),
              title: const Text('Help'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading:
                  Icon(Icons.subdirectory_arrow_left, color: Colors.black87),
              title: const Text('Log out'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
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
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => CatalogScreen()));
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
