import 'package:flutter/material.dart';

class HospitalPage extends StatelessWidget {
  const HospitalPage({super.key});

  @override
  Widget build(BuildContext context) {
    final hospitals = [
      {
        "name": "Lab Scan Ambulance Service",
        "phone": "01234567890",
        "location": "Mohammad Ali Road, Cumilla"
      },
      {
        "name": "Mayer Doa Ambulance Service",
        "phone": "01234567890",
        "location": "Cumilla"
      },
      {
        "name": "Ad-din Women’s Medical College",
        "phone": "01234567890",
        "location": "Modhupukur, Cumilla"
      },
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff9f2026),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Hospitals And Ambulance Services",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: hospitals.length,
        itemBuilder: (context, index) {
          final hospital = hospitals[index];
          return Container(
            margin: const EdgeInsets.only(bottom: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Row(
              children: [
                Container(
                  width: 80,
                  height: 120,
                  color: const Color(0xff9f2026),
                  child: const Icon(Icons.local_hospital, color: Colors.white, size: 40),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(hospital["name"]!, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                        const SizedBox(height: 4),
                        Text(hospital["location"]!, style: const TextStyle(fontSize: 12)),
                        const SizedBox(height: 4),
                        Text("Phone: ${hospital["phone"]!}", style: const TextStyle(fontSize: 12)),
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 12),
                  child: Icon(Icons.call, color: Color(0xff9f2026), size: 50),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}