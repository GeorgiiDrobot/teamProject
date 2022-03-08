import 'package:equatable/equatable.dart';

class Item extends Equatable {

  final String name;
  final double price;
  final String category;
  final String imageUrl;
  final bool isPopular;
  final bool isRecentlyViewed;


  const Item({
    required this.name,
    required this.price,
    required this.category,
    required this.imageUrl,
    required this.isPopular,
    required this.isRecentlyViewed

  });

  @override
  // TODO: implement props
  List<Object?> get props => [name, price, category, imageUrl, isPopular, isRecentlyViewed];

  static List<Item> items = [
    Item(name: "ÄPPLARÖ", price: 222, category: 'Furniture', imageUrl: 'https://d2rbyiw1vv51io.cloudfront.net/web/ikea4/images/306/0730621_PE737666_S3.jpg', isPopular: true, isRecentlyViewed: false),
    Item(name: "SMEDSTORP", price: 549, category: "Furniture", imageUrl: "https://d2rbyiw1vv51io.cloudfront.net/web/ikea4/images/898/0989830_PE818626_S3.jpg", isPopular: true, isRecentlyViewed: true),
    Item(name: "HAMARVIK", price: 149, category: "Mattresses", imageUrl: "https://d2rbyiw1vv51io.cloudfront.net/web/ikea4/images/862/0786244_PE762930_S3.jpg", isPopular: false, isRecentlyViewed: true),
    Item(name: "FEJKA", price: 6.99, category: "Plants", imageUrl: "https://d2rbyiw1vv51io.cloudfront.net/web/ikea4/images/592/0959226_PE809439_S3.jpg", isPopular: true, isRecentlyViewed: false),
    Item(name: "ARTIFICIAL PLANT", price: 19.99, category: "Plants", imageUrl: "https://d2rbyiw1vv51io.cloudfront.net/web/ikea4/images/592/0959214_PE809427_S3.jpg", isPopular: false, isRecentlyViewed: true),
    Item(name: "NETOD FRIDGE", price: 262, category: "Appliances", imageUrl: "https://d2rbyiw1vv51io.cloudfront.net/web/ikea4/images/756/0675620_PE718423_S3.jpg", isPopular: false, isRecentlyViewed: false),
    Item(name: "INDUCTION HOB", price: 139, category: "Appliances", imageUrl: "https://d2rbyiw1vv51io.cloudfront.net/web/ikea4/images/846/0984686_PE816365_S3.jpg", isPopular: false, isRecentlyViewed: false),
    Item(name: "LURPASSA", price: 12.99, category: "Storage", imageUrl: "https://d2rbyiw1vv51io.cloudfront.net/web/ikea4/images/188/0918866_PE786497_S3.jpg", isPopular: false, isRecentlyViewed: true),
    Item(name: "KVARNVIK", price: 16.99, category: "Storage", imageUrl: "https://d2rbyiw1vv51io.cloudfront.net/web/ikea4/images/021/0802167_PE768402_S3.jpg", isPopular: false, isRecentlyViewed: false),
    Item(name: "VATNESTRÖM", price: 699, category: "Mattresses", imageUrl: "https://d2rbyiw1vv51io.cloudfront.net/web/ikea4/images/106/0810694_PE771377_S3.jpg", isPopular: false, isRecentlyViewed: false),
  ];

}