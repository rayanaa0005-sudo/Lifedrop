import 'package:flutter/material.dart';

class RareBloodGroups extends StatelessWidget {
  const RareBloodGroups({super.key});

  @override
  Widget build(BuildContext context) {
    final requests = [
      {
        "blood": "O-",
        "name": "Zaherin Tanha",
        "location": "Mogbazar, Dhaka",
        "status": "Serious heart patient",
        "contact": "0175377843"
      },
      {
        "blood": "AB-",
        "name": "Hithila Masan",
        "location": "Kallyanpur, Dhaka",
        "status": "Needs urgent donation",
        "contact": "01715372844"
      },
      {
        "blood": "A-",
        "name": "Raya Nazeba",
        "location": "Gulshan, Dhaka",
        "status": "Requires 1 bag",
        "contact": "01611223344"
      },
      {
        "blood": "A-",
        "name": "Nazeba Tanha",
        "location": "Gulshan, Dhaka",
        "status": "Requires 1 bag",
        "contact": "01611223344"
      },
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff9f2026),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back, color: Colors.white,)),
        title: const Text("Rare Blood Group Requests",
          style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: requests.length,
        itemBuilder: (context, index) {
          final req = requests[index];
          return Container(
            margin: const EdgeInsets.only(bottom: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
              boxShadow: [
                BoxShadow(color: Colors.grey.shade300, blurRadius: 5, offset: const Offset(0, 3)),
              ],
            ),
            child: Row(
              children: [
                Container(
                  width: 80,
                  height: 120,
                  color: const Color(0xff9f2026),
                  child: Center(
                    child: Text(
                      req["blood"]!,
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
                        Text(req["name"]!, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                        const SizedBox(height: 6),
                        Text(req["location"]!, style: const TextStyle(fontSize: 14)),
                        const SizedBox(height: 6),
                        Text(req["status"]!, style: const TextStyle(fontSize: 14, color: Colors.red)),
                        const SizedBox(height: 6),
                        Text("Contact: ${req["contact"]!}", style: const TextStyle(fontSize: 14)),
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 12),
                  child: Icon(Icons.phone, color: Color(0xff9f2026), size: 50),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}