import 'package:travel_ui/models/activity_mode.dart';

class Hotel {
  String imageUrl;
  String name;
  String address;
  int price;
  List<Activity> activities;
  Hotel({
    required this.imageUrl,
    required this.name,
    required this.address,
    required this.price,
    required this.activities,
  });
}

List<Activity> activities = [
  Activity(
    imageUrl: 'assets/images/hotel3.jpg',
    name: 'Hotel Excelsior Venice',
    type: 'Resort',
    startTimes: ['24 hours available'],
    rating: 5,
    price: 105,
  ),
  Activity(
    imageUrl: 'assets/images/hotel2.jpg',
    name: 'The Ritz-Carlton, Cancun',
    type: 'Luxury Hotel',
    startTimes: ['24 hours available'],
    rating: 4,
    price: 99,
  ),
  Activity(
    imageUrl: 'assets/images/hotel5.jpg',
    name: 'The Surin Phuket',
    type: 'Business Hotel',
    startTimes: ['24 hours available'],
    rating: 4,
    price: 110,
  ),
];

final List<Hotel> hotels = [
  Hotel(
    imageUrl: 'assets/images/hotel0.jpg',
    name: 'The Gritti Palace',
    address: '404 Great St',
    price: 125,
    activities: activities,
  ),
  Hotel(
    imageUrl: 'assets/images/hotel1.jpg',
    name: 'Le Meurice',
    address: 'Rue de Rivoli, Paris, France',
    price: 180,
    activities: activities,
  ),
  Hotel(
    imageUrl: 'assets/images/hotel4.jpg',
    name: 'Hotel Cipriani',
    address: 'Giudecca, 10, Venice, Italy',
    price: 220,
    activities: activities,
  ),
];
