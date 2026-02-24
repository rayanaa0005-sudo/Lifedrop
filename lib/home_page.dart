import 'package:flutter/material.dart';
import 'select_district_page.dart';
import 'drawer_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerPage(), // slide panel
      appBar: AppBar(
        backgroundColor: const Color(0xff9f2026),
        title: const Text("LifeDrop"),
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

            // Grid buttons
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: GridView.count(
                crossAxisCount: 3,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                childAspectRatio: 1,
                children: [

                  buildGridItem("Available Donors", "assets/images/donor.png"),
                  buildGridItem("Request For Donation", "assets/images/request.png"),
                  buildGridItem("Request For Blood", "assets/images/blood.png"),
                  buildGridItem("Post To Donate", "assets/images/post.png"),
                  buildGridItem("Rare Blood Group", "assets/images/rare.png"),

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

            // Blood chart
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