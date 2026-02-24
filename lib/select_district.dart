import 'package:flutter/material.dart';

class SelectDistrict extends StatelessWidget {
  const SelectDistrict({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> districts = [
      "Barishal", "Bogra", "Cumilla", "Dhaka", "Faridpur",
      "Jhenaidah", "Khulna", "Magura", "Narayanganj", "Narshingdi"
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFB71C1C),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          "SELECT DISTRICT",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: districts.length,
        separatorBuilder: (context, index) => const Divider(height: 1),
        itemBuilder: (context, index) {
          String district = districts[index];

          return ListTile(
            title: Text(
              district,
              style: const TextStyle(
                fontSize: 20,
                color: Color(0xFF5A5A5A), // Gray color
              ),
            ),
            onTap: () {

            },
          );
        },
      ),
    );
  }
}