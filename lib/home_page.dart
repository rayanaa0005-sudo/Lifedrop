import 'package:flutter/material.dart';
import 'package:lifedrop/rare_blood_groups.dart';
import 'select_district_page.dart';
import 'drawer_page.dart';
import 'post_to_donate.dart';
import 'request_for_blood.dart';
import 'requests_for_blood.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerPage(),
      appBar: AppBar(
        backgroundColor: const Color(0xff9f2026),
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text("LifeDrop",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Image.asset(
              "assets/images/user_icon.png",
              height: 30,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            const SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: GridView.count(
                crossAxisCount: 3,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                childAspectRatio: 1,
                children: [

                  buildGridItem("Available Donors", "assets/images/donor.png"),

              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const RequestsPage(),
                    ),
                  );
                },
                child:
                buildGridItem("Requests", "assets/images/request.png"),
              ),

                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const RequestForBlood(),
                        ),
                      );
                    },
                    child: buildGridItem(
                        "Request For Blood",
                        "assets/images/blood.png"),
                  ),

                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const PostToDonatePage(),
                        ),
                      );
                    },
                    child: buildGridItem(
                        "Post To Donate",
                        "assets/images/post.png"),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const RareBloodGroups(),
                        ),
                      );
                    },
                    child: buildGridItem("Rare Blood Group", "assets/images/rare.png"),
                  ),



                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const SelectDistrictPage(),
                        ),
                      );
                    },
                    child: buildGridItem(
                        "Nearby Hospital and Ambulance",
                        "assets/images/hospital.png"),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            Image.asset(
              "assets/images/chart.png",
              height: 250,
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget buildGridItem(String title, String imagePath) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(imagePath, height: 40),
        const SizedBox(height: 8),
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 12),
        )
      ],
    );
  }
}