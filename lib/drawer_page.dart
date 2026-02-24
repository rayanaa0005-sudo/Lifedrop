import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [

          // 🔴 RED HEADER WITH LOGO AND BACK BUTTON
          Container(
            width: double.infinity,
            height: 180,
            color: const Color(0xff9f2026),
            padding: const EdgeInsets.only(left: 5, top: 10, right: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.white, size: 28),
                  onPressed: () {
                    Navigator.pop(context); // closes the drawer
                  },
                ),
                const SizedBox(width: 5),
                Image.asset(
                  "assets/images/lifedrop_logo.png",
                  height: 80,
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          // MENU ITEMS
          buildMenuItem(
            context,
            title: "CONTACT US",
          ),

          buildMenuItem(
            context,
            title: "ABOUT US",
          ),

          buildMenuItem(
            context,
            title: "SHARE",
          ),

          buildMenuItem(
            context,
            title: "PRIVACY POLICY",
          ),

          const Divider(),

          buildMenuItem(
            context,
            title: "SIGN OUT",
            onTap: () {
              Navigator.pushReplacementNamed(context, "/login");
            },
          ),

          buildMenuItem(
            context,
            title: "EXIT",
            onTap: () {
              SystemNavigator.pop(); // closes entire app
            },
          ),
        ],
      ),
    );
  }

  Widget buildMenuItem(
      BuildContext context, {
        required String title,
        VoidCallback? onTap,
      }) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 14,
          color: Color(0xff5a5a5a),
        ),
      ),
      onTap: onTap,
    );
  }
}