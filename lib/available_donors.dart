import 'package:flutter/material.dart';

class AvailableDonorsPage extends StatelessWidget {
  final String bloodGroup;
  final String district;

  const AvailableDonorsPage({
    super.key,
    required this.bloodGroup,
    required this.district,
  });

  @override
  Widget build(BuildContext context) {
    final donors = [
      {
        "name": "Zaherin Tanha",
        "blood": "O+",
        "district": "Dhaka",
        "location": "Mogbazar, Dhaka",
        "status": "Ready to donate",
        "contact": "01715372843",
      },
      {
        "name": "Mithila Hasan",
        "blood": "O+",
        "district": "Dhaka",
        "location": "Kallyanpur, Dhaka",
        "status": "Ready to donate",
        "contact": "01715372844",
      },
      {
        "name": "Raya Nazeba",
        "blood": "A+",
        "district": "Dhaka",
        "location": "Gulshan, Dhaka",
        "status": "Ready to donate",
        "contact": "01611223344",
      },
    ];

    final filtered = donors
        .where((d) => d["blood"] == bloodGroup && d["district"] == district)
        .toList();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff9f2026),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: const Icon(Icons.arrow_back, color: Colors.white,)),
        title: const Text("Available Donors",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: filtered.isEmpty
          ? const Center(child: Text("No donors found", style: TextStyle(fontSize: 18)))
          : ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: filtered.length,
        itemBuilder: (context, index) {
          final donor = filtered[index];
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
                  width: 90,
                  height: 130,
                  color: const Color(0xff9f2026),
                  child: Center(
                    child: Text(
                      donor["blood"]!,
                      style: const TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(donor["name"]!, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                        const SizedBox(height: 4),
                        Text(donor["location"]!, style: const TextStyle(fontSize: 12)),
                        const SizedBox(height: 4),
                        Text(donor["status"]!, style: const TextStyle(fontSize: 12)),
                        const SizedBox(height: 4),
                        Text("Contact: ${donor["contact"]!}", style: const TextStyle(fontSize: 12)),
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