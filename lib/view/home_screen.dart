import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map> posts = [
    {
      "profile":
          "https://imgs.search.brave.com/ZlMA1xyb5O_WINlJ1KTJPjXirJamlkRY4vG4wWqequQ/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly93YWxs/cGFwZXJzLmNvbS9p/bWFnZXMvZmVhdHVy/ZWQvY29vbC1wcm9m/aWxlLXBpY3R1cmUt/ODdoNDZnY29iamw1/ZTR4dS5qcGc",
      "name": "Niraj Jadhav",
      "loc": "Los Angeles",
      "post":
          "https://imgs.search.brave.com/QX9VSzK9-xEQFmbwmpNyKlAUde_zOj2GZc6xLOddSyk/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMudW5zcGxhc2gu/Y29tL3Bob3RvLTE1/MTQ1MzMyMTI3MzUt/NWRmMjdkOTcwZGIw/P2ZtPWpwZyZxPTYw/Jnc9MzAwMCZpeGxp/Yj1yYi00LjAuMyZp/eGlkPU0zd3hNakEz/ZkRCOE1IeHpaV0Z5/WTJoOE1UTjhmRzFo/Y25Ob2JXVnNiRzk4/Wlc1OE1IeDhNSHg4/ZkRBPQ.jpeg",
    },
    {
      "profile":
          "https://imgs.search.brave.com/wT_6lGAr-egZPhwJx62_5sFiaicaUfSx3W_Gc46Olc4/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMTM1/NzkzMDAzOC9waG90/by9pbmZsdWVuY2Vy/LWFwcGx5aW5nLW1h/c2NhcmEtYXQtaG9t/ZS1zdHVkaW8uanBn/P3M9NjEyeDYxMiZ3/PTAmaz0yMCZjPUd5/dE1QLWtEdGNON2M4/TTVCZXpqZ1ZOS1JP/NUdmb2RCNTdKQV9x/ckFyMnM9",
      "name": "Prajakta Budyal",
      "loc": "Maldives",
      "post":
          "https://imgs.search.brave.com/kawrtbnBAaNWbWe5N-zSEszPMswUTWKu0Vu-zKBaC0g/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvNjIz/MzA5MzQwL3Bob3Rv/L21hbGRpdmVzLmpw/Zz9zPTYxMng2MTIm/dz0wJms9MjAmYz03/NHZQU2l1eXJqSVJm/b25adXhXZkQwU0Jm/a3lrTTNJbUZSZDlP/NGZZa0FjPQ",
    },
    {
      "profile":
          "https://imgs.search.brave.com/GgaSYp8sW-J7e5vl9X65K2Si9uOYsd9h783YyoAFxjA/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMTQ3/MDQzNTMxOC9waG90/by92bG9nZ2VyLmpw/Zz9zPTYxMng2MTIm/dz0wJms9MjAmYz1F/LUgzRWZEaUlzTWxS/T1ZmeGRTZnM4SjUx/ZTJJWXUzNnZvbG50/elBMbW84PQ",
      "name": "Siddesh Patbhage",
      "loc": "IceLand",
      "post":
          "https://imgs.search.brave.com/Z3Qwu5SgNu9VIGKvuxNG6sh0P9FEP6rwypdV2hMmH-U/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9waG90/b3Muc211Z211Zy5j/b20vVHJhdmVsL0lj/ZWxhbmQvSWNlbGFu/ZC1lYm9vay9FYm9v/ay1sYXJnZS9pLXY2/UG1wUFcvMS9ML0Yy/MDglMjBsLUwuanBn",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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

      //Posts
      body: Stack(
        children: [
          Container(
            margin: const EdgeInsets.all(20),
            height: MediaQuery.of(context).size.height,
            child: ListView.builder(
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
                          )
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Positioned(
            bottom: 15,
            right: 0,
            left: 0,
            child: Container(
              margin: const EdgeInsets.all(25),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 2,
                    offset: Offset(0, 3),
                  )
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Icon(
                    Icons.home,
                    size: 35,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed("/explore");
                    },
                    child: const Icon(
                      Icons.explore_outlined,
                      size: 35,
                    ),
                  ),
                  const Icon(
                    Icons.add_circle_outline,
                    size: 35,
                  ),
                  const Icon(
                    Icons.share_location_rounded,
                    size: 35,
                  ),
                  const Icon(
                    Icons.person_4_outlined,
                    size: 35,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
