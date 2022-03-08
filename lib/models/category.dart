import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String name;
  final String imageUrl;

  const Category({required this.name, required this.imageUrl});

  @override
  // TODO: implement props
  List<Object?> get props => [name, imageUrl];

  static List<Category> categories = [
    Category(
        name: 'Furniture',
        imageUrl:
            'https://media.istockphoto.com/photos/modern-living-room-interior-3d-render-picture-id1293762741?b=1&k=20&m=1293762741&s=170667a&w=0&h=2RI8SmBN4MrEZuTvdwRzaeB887x-dukFcQBpyQ-qwS4='),
    Category(
        name: 'Appliances',
        imageUrl:
            'https://media.istockphoto.com/photos/set-of-home-kitchen-appliances-in-the-room-on-the-wall-background-picture-id1196974664?k=20&m=1196974664&s=612x612&w=0&h=9PNuGOYbsj7J2DTPA8J6kTJUoRHKHLAyUmhRgCdYXVE='),
    Category(
        name: 'Plants',
        imageUrl:
            'https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1631219804-the-sill_calathea-ornata_small_hyde-cream_1440x.jpg'),
    Category(
        name: 'Storage',
        imageUrl:
            'https://cdn.trendhunterstatic.com/thumbs/431/muzhi-cupboard.jpeg'),
    Category(
        name: 'Mattresses',
        imageUrl:
            'https://cbsnews3.cbsistatic.com/hub/i/r/2021/10/18/f3769a65-d3fa-4b14-8701-bf933ecf17d6/thumbnail/1200x630/ecc7d888720dbabf225a790be8c7769d/avocado.jpg')
  ];
}
