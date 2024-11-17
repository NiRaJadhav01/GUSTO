import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gusto/model/images.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: ClipOval(
              child: Image.network(
                "https://media.licdn.com/dms/image/v2/D4D03AQEoHKOvog00yA/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1709236828250?e=2147483647&v=beta&t=qV9GSqCzPq0ilXCggGNDD6dG9_4rkT_eTWc4M2u-FTE",
              ),
            ),
            title: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hey There Shashi",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                Text(
                  "Ready To Travel",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            actions: [
              Container(
                margin: const EdgeInsets.only(right: 8),
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 2,
                      offset: Offset(0, 1),
                    ),
                  ],
                ),
                child: const Icon(
                  Icons.soup_kitchen,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SliverAppBar(
            expandedHeight: 200,
            flexibleSpace: CarouselSlider(
              options: CarouselOptions(
                height: 200.0,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                enlargeFactor: 0.3,
                scrollDirection: Axis.horizontal,
              ),
              items: [0, 1, 2].map(
                (i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        clipBehavior: Clip.antiAlias,
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Image.network(
                          specials[i],
                          fit: BoxFit.fill,
                        ),
                      );
                    },
                  );
                },
              ).toList(),
            ),
          ),
          SliverList.builder(
            itemCount: posts.length,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(bottom: 20),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //Profile for post
                          Container(
                            height: 45,
                            width: 45,
                            clipBehavior: Clip.antiAlias,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: Image.network(posts[index]["profile"]),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //Post Profile Name
                              Text(
                                posts[index]["name"],
                                style: const TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              //Post Profile Loc
                              Text(
                                posts[index]["loc"],
                                style: const TextStyle(
                                  fontSize: 14,
                                ),
                              )
                            ],
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.location_on,
                            size: 30,
                          )
                        ],
                      ),
                    ),
                    Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        //Post Image
                        Container(
                          alignment: Alignment.center,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Image.network(
                            posts[index]["post"],
                            fit: BoxFit.fill,
                          ),
                        ),
                        //Favourite On post Icon
                        const Padding(
                          padding: EdgeInsets.all(10),
                          child: Icon(
                            Icons.favorite_outline,
                            color: Colors.white,
                            shadows: [
                              BoxShadow(
                                blurRadius: 4,
                                offset: Offset(0, 2),
                              )
                            ],
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          style: const ButtonStyle(
                            backgroundColor:
                                WidgetStatePropertyAll(Colors.white),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Bestseller",
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 12,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: const ButtonStyle(
                            backgroundColor:
                                WidgetStatePropertyAll(Colors.white),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Chef's Special",
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 12,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: const ButtonStyle(
                            backgroundColor:
                                WidgetStatePropertyAll(Colors.white),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Review",
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
