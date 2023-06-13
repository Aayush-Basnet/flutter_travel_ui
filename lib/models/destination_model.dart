import 'package:travel_ui/models/activity_mode.dart';

class Destination {
  String imageUrl;
  String city;
  String country;
  String description;
  List<Activity> activities;

  Destination({
    required this.imageUrl,
    required this.city,
    required this.country,
    required this.description,
    required this.activities,
  });
}

List<Activity> activities = [
  Activity(
    imageUrl: 'assets/images/stmarksbasilica.jpg',
    name: 'St.Mark\'s Baasilica',
    type: 'Art and Architecture Tour',
    startTimes: ['9:00 AM', '11:00 AM'],
    rating: 5,
    price: 85,
  ),
  Activity(
    imageUrl: 'assets/images/gondola.jpg',
    name: 'Walking Tour and Gonadola Ride',
    type: 'Boat Excursion',
    startTimes: ['11:00 AM', '1:00 PM'],
    rating: 4,
    price: 60,
  ),
  Activity(
    imageUrl: 'assets/images/murano.jpg',
    name: 'Murano and Burano Tour',
    type: 'River Cruise',
    startTimes: ['12:30 PM', '2:00 PM'],
    rating: 4,
    price: 90,
  ),
];

List<Destination> destinations = [
  Destination(
    imageUrl: 'assets/images/venice.jpg',
    city: 'Venice',
    country: 'Italy',
    description:
        'Romantic canals, stunning architecture and floating city adventures',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/paris.jpg',
    city: 'Paris',
    country: 'France',
    description: 'Visit Pairs for an amazing and unforgettable adventures',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/newdelhi.jpg',
    city: 'New Delhi',
    country: 'India',
    description:
        'Rich history, vibrant markets, cultural experiences - Discover Delhi!',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/saopaulo.jpg',
    city: 'Sao Paulo',
    country: 'Brazil',
    description:
        'Sao Paulo: A bustling metropolis of culture, diversity and energy.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/newyork.jpg',
    city: 'New York City',
    country: 'United States',
    description: 'New York City: The vibrant heart of the United States',
    activities: activities,
  ),
];
