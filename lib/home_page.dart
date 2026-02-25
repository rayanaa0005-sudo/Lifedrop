import 'package:flutter/material.dart';
import 'package:lifedrop/available_donors.dart';
import 'package:lifedrop/rare_blood_groups.dart';
import 'select_district_page.dart';
import 'drawer_page.dart';
import 'post_to_donate.dart';
import 'request_for_blood.dart';
import 'requests_for_blood.dart';
import 'select_blood_group.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerPage(),
      appBar: AppBar(
        backgroundColor: const Color(0xff9f2026),
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
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
              height: 150,
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
                crossAxisSpacing: 8,
                // spacing between columns
                mainAxisSpacing: 8,
                // spacing between rows
                children: [
                  buildBorderedGridItem(
                    context,
                    "Available Donors",
                    "assets/images/donor.png",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const SelectBloodGroupPage(), // go to blood group first
                        ),
                      );
                    },
                  ),
                  buildBorderedGridItem(
                    context,
                    "Requests",
                    "assets/images/request.png",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const RequestsPage()),
                      );
                    },
                  ),
                  buildBorderedGridItem(
                    context,
                    "Request For Blood",
                    "assets/images/blood.png",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const RequestForBlood()),
                      );
                    },
                  ),
                  buildBorderedGridItem(
                    context,
                    "Post To Donate",
                    "assets/images/post.png",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const PostToDonatePage()),
                      );
                    },
                  ),
                  buildBorderedGridItem(
                    context,
                    "Rare Blood Group",
                    "assets/images/rare.png",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const RareBloodGroups()),
                      );
                    },
                  ),
                  buildBorderedGridItem(
                    context,
                    "Nearby Hospital and Ambulance",
                    "assets/images/hospital.png",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const SelectDistrictPage()),
                      );
                    },
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            Image.asset(
              "assets/images/chart.png",
              height: 500,
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget buildBorderedGridItem(BuildContext context, String title, String imagePath, {required VoidCallback onTap}) {
    Color normalColor = Colors.white; // default button background
    Color hoverColor = Colors.red.withOpacity(0.2); // hover color
    ValueNotifier<bool> isHovering = ValueNotifier(false);

    return MouseRegion(
      onEnter: (_) => isHovering.value = true,
      onExit: (_) => isHovering.value = false,
      child: ValueListenableBuilder(
        valueListenable: isHovering,
        builder: (context, hovering, child) {
          return GestureDetector(
            onTap: onTap,
            child: Container(
              decoration: BoxDecoration(
                color: hovering ? hoverColor : normalColor, // toggle color
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(imagePath, height: 130),
                  const SizedBox(height: 8),
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}