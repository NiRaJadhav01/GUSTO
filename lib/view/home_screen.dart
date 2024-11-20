import 'package:carousel_slider/carousel_slider.dart';
import 'package:clay_containers/clay_containers.dart';
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
      backgroundColor: Colors.white10,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            toolbarHeight: 135,
            flexibleSpace: Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    "Hey There Shashi",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Container(
                    height: 120,
                    width: 120,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Image.network(
                      "https://media.licdn.com/dms/image/v2/D4D03AQEoHKOvog00yA/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1709236828250?e=2147483647&v=beta&t=qV9GSqCzPq0ilXCggGNDD6dG9_4rkT_eTWc4M2u-FTE",
                    ),
                  ),
                  const Text(
                    "Ready To Travel",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverAppBar(
            expandedHeight: 140,
            flexibleSpace: CarouselSlider(
              options: CarouselOptions(
                height: 200,
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
            itemCount: postsModel.length,
            itemBuilder: (context, index) {
              return Container(
                color: Colors.white10,
                padding: const EdgeInsets.all(30),
                margin: const EdgeInsets.only(bottom: 20),
                child: ClayContainer(
                  color: Colors.blueGrey.shade50,
                  spread: 12,
                  depth: 100,
                  borderRadius: 30,
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
                              child:
                                  Image.network(postsModel[index].profileImg),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //Post Profile Name
                                Text(
                                  postsModel[index].name,
                                  style: const TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                //Post Profile Loc
                                Text(
                                  postsModel[index].location,
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
                              postsModel[index].postImg,
                              fit: BoxFit.fill,
                            ),
                          ),
                          //Favourite On post Icon
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: GestureDetector(
                              onTap: () {
                                postsModel[index].isLike =
                                    !postsModel[index].isLike;
                                setState(() {});
                              },
                              child: postsModel[index].isLike
                                  ? const Icon(
                                      Icons.favorite,
                                      color: Colors.red,
                                      shadows: [
                                        BoxShadow(
                                          blurRadius: 4,
                                          offset: Offset(0, 2),
                                        ),
                                      ],
                                      size: 30,
                                    )
                                  : const Icon(
                                      Icons.favorite_border_outlined,
                                      color: Colors.white,
                                      shadows: [
                                        BoxShadow(
                                          blurRadius: 4,
                                          offset: Offset(0, 2),
                                        ),
                                      ],
                                      size: 30,
                                    ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
