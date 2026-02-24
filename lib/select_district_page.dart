import 'package:flutter/material.dart';
import 'hospital_page.dart';

class SelectDistrictPage extends StatelessWidget {
  const SelectDistrictPage({super.key});

  final List<String> districts = const [
    "Bogura",
    "Bhola",
    "Bagerhat",
    "Barisal",
    "Chittagang",
    "Cumilla",
    "Dhaka",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff9f2026),
        leading: IconButton(icon: const Icon(Icons.arrow_back, color:Colors.white),
            onPressed: () {
              Navigator.pop(context);
            }
        ),
        title: const Text("Select District",
          style: TextStyle(
          color: Colors.white,
        ),
      ),

      ),
      body: ListView.builder(
        itemCount: districts.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(districts[index]),
            onTap: () {
              if (districts[index] == "Cumilla") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const HospitalPage(),
                  ),
                );
              }
            },
          );
        },
      ),
    );
  }
}