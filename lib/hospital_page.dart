import 'package:flutter/material.dart';

class HospitalPage extends StatelessWidget {
  const HospitalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff9f2026),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          "Hospitals And Ambulance Services",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          buildService(
            "Lab Scan Ambulance Service",
            "01234567890",
            "Mohammad Ali Road, Cumilla",
          ),
          buildService(
            "Mayer Doa Ambulance Service",
            "01234567890",
            "Cumilla",
          ),
          buildService(
            "Ad-din Women’s Medical College",
            "01234567890",
            "Modhupukur, Cumilla",
          ),
          buildService(
            "Cumilla Medical College Hospital",
            "01234567891",
            "Shalbagan, Cumilla",
          ),
          buildService(
            "Al-Haj Hospital & Diagnostic Center",
            "01234567892",
            "GEC, Cumilla",
          ),
          buildService(
            "Ananda Hospital & Diagnostics",
            "01234567893",
            "Kotbari, Cumilla",
          ),
          buildService(
            "Cumilla Ambulance Service",
            "01234567894",
            "District Hospital Road, Cumilla",
          ),
          buildService(
            "Bashundhara Hospital",
            "01234567895",
            "Shalbagan, Cumilla",
          ),
        ],
      ),
    );
  }

  Widget buildService(String name, String phone, String location) {
    return ListTile(
      leading: const Icon(Icons.local_hospital, color: Color(0xff9f2026), size: 50),
      title: Text(name),
      subtitle: Text("$location\n$phone"),
      isThreeLine: true,
      trailing: const Icon(Icons.call, color: Color(0xff9f2026), size: 50),
    );
  }
}