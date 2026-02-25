import 'package:flutter/material.dart';
import 'available_donors.dart';

class SelectDistrict extends StatelessWidget {
  final String selectedBloodGroup;
  const SelectDistrict({super.key, required this.selectedBloodGroup});

  @override
  Widget build(BuildContext context) {
    final List<String> districts = [
      "Barishal","Bogra","Cumilla","Dhaka","Faridpur",
      "Jhenaidah","Khulna","Magura","Narayanganj","Narshingdi"
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff9f2026),
        leading: IconButton(icon: const Icon(Icons.arrow_back, color:Colors.white),
            onPressed: () {
              Navigator.pop(context);
            }
        ),
        title: const Text("Select District",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: districts.length,
        separatorBuilder: (_, index) => const Divider(height: 1),
        itemBuilder: (context, index) {
          String district = districts[index];
          return ListTile(
            title: Text(
              district,
              style: const TextStyle(fontSize: 20, color: Color(0xFF5A5A5A)),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => AvailableDonorsPage(
                    bloodGroup: selectedBloodGroup,
                    district: district,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}