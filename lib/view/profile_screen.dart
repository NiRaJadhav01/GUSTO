import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  // Sample data for posts, highlights, and places visited
  final List<String> highlights = [
    'https://cdn.media.amplience.net/i/boconcept/92774b2d-098b-4a31-907a-ae3f00a2dd4c?locale=*&w=3020&fmt=auto&upscale=false&sm=c&qlt=75&h=4016&poi=0.4375%2C0.40636703%2C0.125%2C0.18726592&scaleFit=poi',
    'https://www.le-bernardin.com/content/slides/lb-prive-001.jpg',
    'https://www.gastromondiale.com/wp-content/uploads/2024/06/eleven-madison-park14-860x645.jpg',
  ];

  final List<String> posts = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQK-uoSi-hIGohj7BBy8srRs493p27CgPiAGw&s',
    'https://www.entrepreneurindia.com/influencer/images/speakers/shivesh.jpg',
    'https://media.licdn.com/dms/image/v2/D4D22AQGc_gktwf4T0A/feedshare-shrink_800/feedshare-shrink_800/0/1693554320940?e=2147483647&v=beta&t=TOR_-G4PpmoGcH4LED-gFASwgM1TSjO4fJ8r144S2RQ',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLSrJta1DJe48kFwD4M5sWGxxpFezAiHmv3w&s',
  ];

  final List<String> placesVisited = [
    'https://images.squarespace-cdn.com/content/v1/6260a0f4f2a1571c44b03c6e/92c8940a-3c7c-4684-8cdf-63fc7603f006/IMG_9175.jpeg',
    'https://www.studio-crow.jp/wp-content/uploads/2017/02/sazenka-07-1-960x1440.jpg',
    'https://i.guim.co.uk/img/media/0e0176fd6fc47946b211fc0542dee1a518d4297a/0_0_4782_2869/master/4782.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=7c2f1c17e669f5f885e14baa1a9529b2',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('foodsnapsby_shivesh'),
        actions: [
          // Settings icon at the top-right corner in a circle
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('/settings');
              },
              child: const CircleAvatar(
                radius: 20,
                backgroundColor: Colors.red,
                child: Icon(
                  Icons.settings,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile container with profile pic upload area
            Center(
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[200],
                ),
                child: Stack(
                  children: [
                    // Main profile pic area (top left)
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: GestureDetector(
                          onTap: () {
                            // Upload profile picture action
                          },
                          child: const CircleAvatar(
                            radius: 50,
                            backgroundImage: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpmIIP3mk7LponLjCieutNjs_a0Wz07agmgA&s'),
                            backgroundColor: Colors.transparent,
                          ),
                        ),
                      ),
                    ),

                    // Text for posts, followers, following with count
                    const Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.only(left: 100, top: 150.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Counts (posts, followers, following)
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      '120', // Posts count
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text('Posts'),
                                  ],
                                ),
                                SizedBox(width: 20),
                                Column(
                                  children: [
                                    Text(
                                      '1.2k', // Followers count
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text('Followers'),
                                  ],
                                ),
                                SizedBox(width: 20),
                                Column(
                                  children: [
                                    Text(
                                      '300', // Following count
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text('Following'),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Edit Profile & Share Buttons
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Edit profile action
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.red,
                  ),
                  child: const Text(
                    'Edit Profile',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    // Share action
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.red,
                  ),
                  child: const Text(
                    'Share',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            // My Highlights
            const Text(
              'My Highlights',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: highlights.map((highlight) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(highlight),
                      backgroundColor: Colors.transparent,
                    ),
                  );
                }).toList(),
              ),
            ),
            const SizedBox(height: 20),
            // My Posts
            const Text(
              'My Posts',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: posts.map((post) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Image.network(
                      post,
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  );
                }).toList(),
              ),
            ),
            const SizedBox(height: 20),
            // Places Visited
            const Text(
              'Places Visited',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: placesVisited.map((place) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Image.network(
                      place,
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
