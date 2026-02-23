import 'package:flutter/material.dart';

class PostToDonatePage extends StatelessWidget {
  const PostToDonatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFB71C1C), // red background
      appBar: AppBar(
        backgroundColor: const Color(0xFFB71C1C),
        elevation: 0,
        leading: const Icon(Icons.arrow_back),
        title: const Text(
          "POST TO DONATE",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [

                // Full Name
                TextField(
                  decoration: InputDecoration(
                    hintText: "Full Name",
                  ),
                ),

                const SizedBox(height: 15),

                // Address
                TextField(
                  decoration: InputDecoration(
                    hintText: "Address",
                  ),
                ),

                const SizedBox(height: 15),

                // Select District
                buildDropdown("Select District"),

                const SizedBox(height: 15),

                // Select Blood Group
                buildDropdown("Select Blood Group"),

                const SizedBox(height: 15),

                // Select Gender
                buildDropdown("Select Gender"),

                const SizedBox(height: 15),

                // Phone No
                TextField(
                  decoration: InputDecoration(
                    hintText: "Phone No",
                  ),
                ),

                const SizedBox(height: 15),

                // Last Donation Date
                TextField(
                  decoration: InputDecoration(
                    hintText: "Last Donation Date",
                  ),
                ),

                const SizedBox(height: 40),

                // Post Button
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFB71C1C),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Post",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }

  // Simple reusable dropdown UI
  Widget buildDropdown(String hint) {
    return DropdownButtonFormField(
      decoration: InputDecoration(
        hintText: hint,
        border: OutlineInputBorder(),
      ),
      items: const [],
      onChanged: (value) {},
    );
  }
}