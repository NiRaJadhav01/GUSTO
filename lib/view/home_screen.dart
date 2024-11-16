import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
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
            leading: Container(
              margin: const EdgeInsets.only(left: 8),
              height: 60,
              width: 60,
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
                Icons.add,
                color: Colors.white,
              ),
            ),
            centerTitle: true,
            title: const Column(
              children: [
                Text(
                  "GUSTO",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Good Trails",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
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
      //SingleChildScrollView(
      //   scrollDirection: Axis.vertical,
      //   child: Column(
      //     children: [
      //       //Carousel Cards
      //       CarouselSlider(
      //         options: CarouselOptions(
      //           height: 200.0,
      //           viewportFraction: 0.8,
      //           initialPage: 0,
      //           enableInfiniteScroll: true,
      //           reverse: false,
      //           autoPlay: true,
      //           autoPlayInterval: const Duration(seconds: 3),
      //           autoPlayAnimationDuration: const Duration(milliseconds: 800),
      //           autoPlayCurve: Curves.fastOutSlowIn,
      //           enlargeCenterPage: true,
      //           enlargeFactor: 0.3,
      //           scrollDirection: Axis.horizontal,
      //         ),
      //         items: [0, 1, 2].map(
      //           (i) {
      //             return Builder(
      //               builder: (BuildContext context) {
      //                 return Container(
      //                   clipBehavior: Clip.antiAlias,
      //                   width: MediaQuery.of(context).size.width,
      //                   margin: const EdgeInsets.symmetric(horizontal: 5.0),
      //                   decoration: BoxDecoration(
      //                     color: Colors.amber,
      //                     borderRadius: BorderRadius.circular(20),
      //                   ),
      //                   child: Image.network(
      //                     specials[i],
      //                     fit: BoxFit.fill,
      //                   ),
      //                 );
      //               },
      //             );
      //           },
      //         ).toList(),
      //       ),
      //       Container(
      //         margin: const EdgeInsets.all(20),
      //         height: MediaQuery.of(context).size.height,
      //         child: ListView.builder(
      //           itemCount: posts.length,
      //           itemBuilder: (context, index) {
      //             return Container(
      //               margin: const EdgeInsets.only(bottom: 20),
      //               child: Column(
      //                 children: [
      //                   Padding(
      //                     padding: const EdgeInsets.all(8.0),
      //                     child: Row(
      //                       crossAxisAlignment: CrossAxisAlignment.start,
      //                       children: [
      //                         //Profile for post
      //                         Container(
      //                           height: 45,
      //                           width: 45,
      //                           clipBehavior: Clip.antiAlias,
      //                           decoration: const BoxDecoration(
      //                             color: Colors.white,
      //                             shape: BoxShape.circle,
      //                           ),
      //                           child: Image.network(posts[index]["profile"]),
      //                         ),
      //                         const SizedBox(
      //                           width: 10,
      //                         ),
      //                         Column(
      //                           crossAxisAlignment: CrossAxisAlignment.start,
      //                           children: [
      //                             //Post Profile Name
      //                             Text(
      //                               posts[index]["name"],
      //                               style: const TextStyle(
      //                                 fontSize: 16,
      //                               ),
      //                             ),
      //                             //Post Profile Loc
      //                             Text(
      //                               posts[index]["loc"],
      //                               style: const TextStyle(
      //                                 fontSize: 14,
      //                               ),
      //                             )
      //                           ],
      //                         ),
      //                         const Spacer(),
      //                         const Icon(
      //                           Icons.location_on,
      //                           size: 30,
      //                         )
      //                       ],
      //                     ),
      //                   ),
      //                   Stack(
      //                     alignment: Alignment.bottomRight,
      //                     children: [
      //                       //Post Image
      //                       Container(
      //                         alignment: Alignment.center,
      //                         clipBehavior: Clip.antiAlias,
      //                         decoration: BoxDecoration(
      //                           borderRadius: BorderRadius.circular(30),
      //                         ),
      //                         child: Image.network(
      //                           posts[index]["post"],
      //                           fit: BoxFit.fill,
      //                         ),
      //                       ),
      //                       //Favourite On post Icon
      //                       const Padding(
      //                         padding: EdgeInsets.all(10),
      //                         child: Icon(
      //                           Icons.favorite_outline,
      //                           color: Colors.white,
      //                           shadows: [
      //                             BoxShadow(
      //                               blurRadius: 4,
      //                               offset: Offset(0, 2),
      //                             )
      //                           ],
      //                           size: 30,
      //                         ),
      //                       ),
      //                     ],
      //                   ),
      //                   Row(
      //                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //                     children: [
      //                       ElevatedButton(
      //                         style: const ButtonStyle(
      //                           backgroundColor:
      //                               WidgetStatePropertyAll(Colors.white),
      //                         ),
      //                         onPressed: () {},
      //                         child: Text(
      //                           "Bestseller",
      //                           style: TextStyle(
      //                             color: Colors.grey[700],
      //                             fontSize: 12,
      //                           ),
      //                         ),
      //                       ),
      //                       ElevatedButton(
      //                         style: const ButtonStyle(
      //                           backgroundColor:
      //                               WidgetStatePropertyAll(Colors.white),
      //                         ),
      //                         onPressed: () {},
      //                         child: Text(
      //                           "Chef's Special",
      //                           style: TextStyle(
      //                             color: Colors.grey[700],
      //                             fontSize: 12,
      //                           ),
      //                         ),
      //                       ),
      //                       ElevatedButton(
      //                         style: const ButtonStyle(
      //                           backgroundColor:
      //                               WidgetStatePropertyAll(Colors.white),
      //                         ),
      //                         onPressed: () {},
      //                         child: Text(
      //                           "Review",
      //                           style: TextStyle(
      //                             color: Colors.grey[700],
      //                             fontSize: 12,
      //                           ),
      //                         ),
      //                       ),
      //                     ],
      //                   ),
      //                 ],
      //               ),
      //             );
      //           },
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        padding: const EdgeInsets.all(8),
        height: 80,
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(30)),
        child: GNav(
          haptic: true, // haptic feedback
          tabBorderRadius: 15,
          tabActiveBorder:
              Border.all(color: Colors.black, width: 1), // tab button border
          curve: Curves.easeOutExpo, // tab animation curves
          duration: const Duration(milliseconds: 50), // tab animation duration
          gap: 8, // the tab button gap between icon and text
          color: Colors.white, // unselected icon color
          activeColor: Colors.white, // selected icon and text color
          iconSize: 22, // tab button icon size
          tabBackgroundColor: Colors.black, // selected tab background color
          padding: const EdgeInsets.symmetric(
              horizontal: 20, vertical: 5), // navigation bar padding
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(
              icon: Icons.explore,
              text: 'Explore',
            ),
            GButton(
              icon: Icons.add,
              text: 'Post',
            ),
            GButton(
              icon: Icons.share_location_rounded,
              text: 'Hotels',
            ),
            GButton(
              icon: Icons.person,
              text: 'Profile',
            )
          ],
        ),
      ),
    );
  }
}
