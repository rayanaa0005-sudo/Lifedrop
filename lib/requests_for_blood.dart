import 'package:flutter/material.dart';

class RequestsPage extends StatelessWidget {
  const RequestsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: const Color(0xFFB71C1C),
        elevation: 0,
        leading: IconButton(icon: const Icon(Icons.arrow_back, color:Colors.white),
            onPressed: () {
              Navigator.pop(context);
            }
        ),
        title: const Text(
          "Requests",
          style: TextStyle(
            color: Colors.white,

          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: const [
          RequestCard(bloodGroup: "O-"),
          RequestCard(bloodGroup: "AB+"),
          RequestCard(bloodGroup: "A-"),
          RequestCard(bloodGroup: "O+"),
          RequestCard(bloodGroup: "B+"),
          RequestCard(bloodGroup: "A-"),
        ],
      ),
    );
  }
}

class RequestCard extends StatelessWidget {
  final String bloodGroup;

  const RequestCard({super.key, required this.bloodGroup});

  @override
  Widget build(BuildContext context) {
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
          // 🔴 Left Blood Group Section
          Container(
            width: 90,
            height: 130,
            decoration: const BoxDecoration(
              color: Color(0xFFB71C1C),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
            ),
            child: Center(
              child: Text(
                bloodGroup,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          // 📄 Details Section
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Zohein Tonha",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Mogbazar, Dhaka",
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "1 Bag",
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Contact: 0175377843",
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Details: Serious heart patient. Ibn Sina Medical Hospital, Dhanmondi, Dhaka",
                    style: TextStyle(fontSize: 11),
                  ),
                ],
              ),
            ),
          ),


          const Padding(
            padding: EdgeInsets.only(right: 12),
            child: Icon(
              Icons.phone,
              color: Color(0xFFB71C1C),
              size: 26,
            ),
          ),
        ],
      ),
    );
  }
}