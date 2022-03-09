import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailedItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: NetworkImage(
                            "https://d2rbyiw1vv51io.cloudfront.net/web/ikea4/images/306/0730621_PE737666_S3.jpg"),
                        fit: BoxFit.cover),
                  ),
                  width: 400,
                  height: 330),
              Text(
                "ÄPPLARÖ",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "2-seat modular sofa, outdoor 160x80x80 cm brown stained/Kuddarna beige \nArticle no: 593.037.12",
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "222 €",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(20, 99, 86, 1)),
                    ),
                    SizedBox(
                      width: 55,
                    ),
                    Text(
                      "Delivery starts from 19,90 € ",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    SizedBox(width: 125,),
                    Icon(Icons.add_shopping_cart, color: Colors.black87),
                    SizedBox(width: 5,),
                    MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        color: Color.fromRGBO(219, 240, 212, 1),
                        child: Text(
                          'Add to shopping cart',
                          style: TextStyle(
                              fontSize: 18,
                              color: Color.fromRGBO(20, 99, 86, 1),
                              fontWeight: FontWeight.normal),
                        ),
                        onPressed: () {}),
                  ],
                ),
              ),
              Row(
                children: [
                  SizedBox(width: 140,),
                  RichText (
                    text: TextSpan(
                      text: "View more product information",
                      style: TextStyle(fontSize: 16,color: Colors.blue),

                    ),
                  ),
                ],
              ),

              SizedBox(height: 5,),
              Row(
                children: [
                  SizedBox(width: 150,),
                  Text(
                    "Discover ÄPPLARÖ collection",
                    style: TextStyle(fontSize: 16, color: Colors.blue),

                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
