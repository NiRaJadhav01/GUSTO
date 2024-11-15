import 'package:flutter/material.dart';

class GustoGuideScreen extends StatefulWidget {
  const GustoGuideScreen({super.key});

  @override
  State<GustoGuideScreen> createState() => _GustoGuideScreenState();
}

class _GustoGuideScreenState extends State<GustoGuideScreen> {
  // Sample list of cities and restaurants
  final List<Map<String, dynamic>> citiesWithRestaurants = [
    {
      'city': 'New York',
      'ratings': [2, 3, 4],
      'restaurants': [
        {
          'name': 'Atomix',
          'rating': '2 Stars',
          'images': [
            'https://cdn.media.amplience.net/i/boconcept/92774b2d-098b-4a31-907a-ae3f00a2dd4c?locale=*&w=3020&fmt=auto&upscale=false&sm=c&qlt=75&h=4016&poi=0.4375%2C0.40636703%2C0.125%2C0.18726592&scaleFit=poi',
          ],
        },
        {
          'name': 'Le Bernardin',
          'rating': '2 Stars',
          'images': [
            'https://www.le-bernardin.com/content/slides/lb-prive-001.jpg',
          ],
        },
        {
          'name': 'Per Se',
          'rating': '4 Stars',
          'images': [
            'https://s3-media0.fl.yelpcdn.com/bphoto/hODEEPlxI_U8ahRPXx0GtA/348s.jpg',
          ],
        },
      ],
    },
    {
      'city': 'Paris',
      'ratings': [2, 3, 4],
      'restaurants': [
        {
          'name': 'L Ambroisie',
          'rating': '2 Stars',
          'images': [
            'https://img3.parisbouge.com/qod-Vn2GPDwXqWidk3OjSEjwMlcggswHLoC94qzvPcg/rs:fit:1280:1280:1/g:ce/YzNhNzM2ZjAtNGY4MS00NzJiLTk4ODItNzAxOTQwYTA5Yzk2LmpwZw.jpg',
          ],
        },
        {
          'name': 'Le Cinq',
          'rating': '3 Stars',
          'images': [
            'https://i.guim.co.uk/img/media/0e0176fd6fc47946b211fc0542dee1a518d4297a/0_0_4782_2869/master/4782.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=7c2f1c17e669f5f885e14baa1a9529b2',
          ],
        },
        {
          'name': 'Arpege',
          'rating': '3 Stars',
          'images': [
            'https://www.theworlds50best.com/discovery/filestore/jpg/Arpege-Paris-France-03.jpg',
          ],
        },
      ],
    },
    {
      'city': 'Tokyo',
      'ratings': [2, 3, 4],
      'restaurants': [
        {
          'name': 'Harutaka',
          'rating': '3 Stars',
          'images': [
            'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/10/ca/61/6b/caption.jpg?w=400&h=-1&s=1',
          ],
        },
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 18, right: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search bar
            const TextField(
              decoration: InputDecoration(
                hintText: 'Search the Gusto Guide...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.symmetric(vertical: 10.0),
              ),
            ),
            const SizedBox(height: 20),

            // Cities to Explore
            const Text(
              'Cities to Explore',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),

            // Horizontal Scrollable Cities Buttons with Stars
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: citiesWithRestaurants.map((cityData) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Column(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // Handle city button press
                          },
                          child: Text(cityData['city']),
                        ),
                        Row(
                          children: cityData['ratings'].map<Widget>((rating) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 2.0),
                              child: Icon(
                                Icons.star,
                                color: rating == 4
                                    ? Colors.yellow
                                    : (rating == 3
                                        ? Colors.orange
                                        : Colors.grey),
                                size: 20,
                              ),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
            const SizedBox(height: 20),

            // List of Restaurants per City
            Expanded(
              child: ListView.builder(
                itemCount: citiesWithRestaurants.length,
                itemBuilder: (context, cityIndex) {
                  final cityData = citiesWithRestaurants[cityIndex];
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // City Name
                      Text(
                        cityData['city'],
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),

                      // Horizontal Scrollable Restaurants and Images
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children:
                              cityData['restaurants'].map<Widget>((restaurant) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // Restaurant Images
                                  Row(
                                    children: restaurant['images']
                                        .map<Widget>((imageUrl) {
                                      return Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10.0),
                                        child: Column(
                                          children: [
                                            Image.network(
                                              imageUrl,
                                              width: 100,
                                              height: 100,
                                              fit: BoxFit.cover,
                                            ),
                                            const SizedBox(height: 5),
                                            // Restaurant Rating and Name
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  color: restaurant['rating'] ==
                                                          '4 Stars'
                                                      ? Colors.yellow
                                                      : (restaurant['rating'] ==
                                                              '3 Stars'
                                                          ? Colors.orange
                                                          : Colors.grey),
                                                  size: 18,
                                                ),
                                                Text(restaurant['rating']),
                                              ],
                                            ),
                                            const SizedBox(height: 5),
                                            Text(restaurant['name']),
                                          ],
                                        ),
                                      );
                                    }).toList(),
                                  ),
                                ],
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
