import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_ui/models/activity_mode.dart';
import 'package:travel_ui/models/hotel_model.dart';

class HotelScreen extends StatefulWidget {
  final Hotel hotel;
  HotelScreen({required this.hotel});

  @override
  State<HotelScreen> createState() => _HotelScreenState();
}

class _HotelScreenState extends State<HotelScreen> {
  Text _buildRatingStars(int rating) {
    List<InlineSpan> starIcons = [];
    for (int i = 0; i < rating; i++) {
      starIcons.add(
        WidgetSpan(
          child: Icon(
            Icons.star,
            color: Colors.amber,
            size: 16,
          ),
        ),
      );
    }
    return Text.rich(
      TextSpan(children: starIcons),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 6.0)
                    ]),
                child: Hero(
                  tag: widget.hotel.imageUrl,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    child: Image(
                      image: AssetImage(widget.hotel.imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(Icons.arrow_back),
                      iconSize: 26,
                      color: Colors.black,
                    ),
                    Row(
                      children: <Widget>[
                        IconButton(
                          onPressed: () => print('Search Bar is pressed'),
                          icon: Icon(Icons.search),
                          iconSize: 26,
                          color: Colors.black,
                        ),
                        IconButton(
                          onPressed: () => Navigator.pop(context),
                          icon: Icon(FontAwesomeIcons.arrowDownWideShort),
                          iconSize: 20,
                          color: Colors.black,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                left: 20,
                bottom: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      widget.hotel.name,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          size: 12,
                          color: Colors.white70,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          widget.hotel.address,
                          style: TextStyle(color: Colors.white70, fontSize: 16),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                  right: 20,
                  bottom: 19,
                  child: Icon(
                    Icons.location_on_outlined,
                    color: Colors.white70,
                    size: 20,
                  ))
            ],
          ),
          Expanded(
            child: ListView.builder(
                padding: EdgeInsets.only(top: 5, bottom: 9),
                itemCount: widget.hotel.activities.length,
                itemBuilder: (BuildContext context, int index) {
                  Activity activity = widget.hotel.activities[index];
                  return Stack(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(28, 5.0, 20, 4.9),
                        height: 152,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(105, 20, 20, 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    width: 120,
                                    child: Text(
                                      activity.name,
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        '\$${activity.price}',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        'per night',
                                        style: TextStyle(
                                          fontSize: 11,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Text(
                                activity.type,
                                style: TextStyle(color: Colors.grey),
                              ),
                              _buildRatingStars(activity.rating),
                              SizedBox(
                                height: 9,
                              ),
                              Row(
                                children: <Widget>[
                                  Container(
                                    width: 125,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 202, 214, 223),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      activity.startTimes[0],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20,
                        top: 13,
                        bottom: 12,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                            image: AssetImage(activity.imageUrl),
                            width: 108,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  );
                }),
          )
        ],
      ),
    );
  }
}
