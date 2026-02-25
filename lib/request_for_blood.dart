import 'package:flutter/material.dart';

class RequestForBlood extends StatelessWidget {
  const RequestForBlood({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff9f2026),
      appBar: AppBar(
        backgroundColor: const Color(0xff9f2026),
        elevation: 0,
        leading: IconButton(icon: const Icon(Icons.arrow_back, color:Colors.white),
            onPressed: () {
              Navigator.pop(context);
            }
        ),
        title: const Text(
          "Make Request For Blood",
          style: TextStyle( color:Colors.white),
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

                TextField(
                  decoration: InputDecoration(
                    hintText: "Required Blood Group",
                  ),
                ),

                const SizedBox(height: 15),

                TextField(
                  decoration: InputDecoration(
                    hintText: "Amount of Required Blood Group ",
                  ),
                ),

                const SizedBox(height: 15),

                // Phone No
                TextField(
                  decoration: InputDecoration(
                    hintText: "Phone No",
                  ),
                ),

                const SizedBox(height: 15),

                TextField(
                  decoration: InputDecoration(
                    hintText: "Date & Time",
                  ),
                ),

                const SizedBox(height: 15),

                // Last Donation Date
                TextField(
                  decoration: InputDecoration(
                    hintText: "Name of Hospital (Address ? Ward No ? Bed No ? )",
                  ),
                ),

                const SizedBox(height: 40),

                TextField(
                  decoration: InputDecoration(
                    hintText: "Why Do You Need Blood",
                  ),
                ),

                const SizedBox(height: 40),

                // Post Button
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff9f2026),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Request",
                      style: TextStyle(fontSize: 18, color: Colors.white),
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