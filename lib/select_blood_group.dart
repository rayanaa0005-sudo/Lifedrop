import 'package:flutter/material.dart';
import 'package:lifedrop/select_district.dart';

class SelectBloodGroup extends StatelessWidget {
  const SelectBloodGroup({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> bloodGroups = [
      "A+", "A-", "B+", "B-", "AB+", "AB-", "O+", "O-"
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFB71C1C),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color:Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          "SELECT BLOOD GROUP",
          style: TextStyle( color:Colors.white),
        ),
        centerTitle: true,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: bloodGroups.length,
        separatorBuilder: (context, index) => const Divider(height: 1),
        itemBuilder: (context, index) {
          String group = bloodGroups[index];

          return ListTile(
            title: Text(
              group,
              style: const TextStyle(fontSize: 20,  color: Color(0xFF5A5A5A),),
            ),
            onTap: () {
              Navigator.push(
                 context,
                 MaterialPageRoute(
                   builder: (context) => const SelectDistrict(),
                 ),
               );
            },
          );
        },
      ),
    );
  }
}