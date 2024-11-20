import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gusto/view/settings_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.notifications_outlined),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SettingsScreen()));
                setState(() {});
              },
              child: const Icon(Icons.settings_outlined),
            ),
          )
        ],
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Container(
              height: 125,
              width: 125,
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: Image.network(
                "https://media.licdn.com/dms/image/v2/D4D03AQEoHKOvog00yA/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1709236828250?e=2147483647&v=beta&t=qV9GSqCzPq0ilXCggGNDD6dG9_4rkT_eTWc4M2u-FTE",
              ),
            ),
            Text(
              "Shashi Bagal",
              style: GoogleFonts.gabarito(
                fontSize: 20,
              ),
            ),
            Text(
              "@shashibagal",
              style: GoogleFonts.gabarito(
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      "3054",
                      style: GoogleFonts.gabarito(
                        fontSize: 24,
                      ),
                    ),
                    Text(
                      "Follower",
                      style: GoogleFonts.gabarito(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "6",
                      style: GoogleFonts.gabarito(
                        fontSize: 25,
                      ),
                    ),
                    Text(
                      "Following",
                      style: GoogleFonts.gabarito(
                        fontSize: 15,
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Favorites",
                    style: GoogleFonts.gabarito(
                      fontSize: 23,
                    ),
                  ),
                  const Icon(Icons.arrow_forward_ios_rounded)
                ],
              ),
            ),
            SizedBox(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: ClayContainer(
                        spread: 1,
                        borderRadius: 20,
                        width: 250,
                        color: Colors.grey,
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
