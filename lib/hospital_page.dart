import 'package:flutter/material.dart';

class HospitalAmbulancePage extends StatefulWidget {
  const HospitalAmbulancePage({super.key});

  @override
  State<HospitalAmbulancePage> createState() => _HospitalAmbulancePageState();
}

class _HospitalAmbulancePageState extends State<HospitalAmbulancePage> {
  String? selectedBloodGroup;
  String? selectedDistrict;

  final List<String> bloodGroups = ["A+", "A-", "B+", "B-", "AB+", "AB-", "O+", "O-"];
  final List<String> districts = [
    "Dhaka",
    "Chittagong",
    "Khulna",
    "Barisal",
    "Sylhet",
    "Rangpur",
    "Rajshahi",
    "Comilla"
  ];

  // Hardcoded hospital and ambulance data
  final List<Map<String, String>> services = [
    {
      "type": "Hospital",
      "name": "Apollo Hospital Dhaka",
      "district": "Dhaka",
      "bloodGroup": "A+",
      "address": "Dhaka 1212",
      "contact": "01710000001"
    },
    {
      "type": "Hospital",
      "name": "Bangladesh Medical College",
      "district": "Dhaka",
      "bloodGroup": "O-",
      "address": "Dhaka 1205",
      "contact": "01710000002"
    },
    {
      "type": "Ambulance",
      "name": "Rapid Ambulance Service",
      "district": "Dhaka",
      "bloodGroup": "Any",
      "address": "Dhaka 1213",
      "contact": "01720000001"
    },
    {
      "type": "Hospital",
      "name": "Chittagong General Hospital",
      "district": "Chittagong",
      "bloodGroup": "B+",
      "address": "Chittagong 4000",
      "contact": "01730000001"
    },
    {
      "type": "Ambulance",
      "name": "Chittagong Quick Ambulance",
      "district": "Chittagong",
      "bloodGroup": "Any",
      "address": "Chittagong 4010",
      "contact": "01730000002"
    },
    {
      "type": "Hospital",
      "name": "Khulna Medical Center",
      "district": "Khulna",
      "bloodGroup": "AB-",
      "address": "Khulna 9000",
      "contact": "01740000001"
    },
  ];

  @override
  Widget build(BuildContext context) {
    // Filter services based on selections
    final filteredServices = services.where((s) {
      final matchBlood = selectedBloodGroup == null ||
          s['bloodGroup'] == selectedBloodGroup || s['bloodGroup'] == "Any";
      final matchDistrict = selectedDistrict == null || s['district'] == selectedDistrict;
      return matchBlood && matchDistrict;
    }).toList();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff9f2026),
        title: const Text("Hospitals & Ambulance", style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Blood Group Dropdown
            Row(
              children: [
                const Text("Blood Group: ", style: TextStyle(fontSize: 16)),
                const SizedBox(width: 10),
                DropdownButton<String>(
                  value: selectedBloodGroup,
                  hint: const Text("Select"),
                  items: bloodGroups.map((bg) {
                    return DropdownMenuItem(value: bg, child: Text(bg));
                  }).toList(),
                  onChanged: (val) {
                    setState(() {
                      selectedBloodGroup = val;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 10),
            // District Dropdown
            Row(
              children: [
                const Text("District: ", style: TextStyle(fontSize: 16)),
                const SizedBox(width: 10),
                DropdownButton<String>(
                  value: selectedDistrict,
                  hint: const Text("Select"),
                  items: districts.map((d) {
                    return DropdownMenuItem(value: d, child: Text(d));
                  }).toList(),
                  onChanged: (val) {
                    setState(() {
                      selectedDistrict = val;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 20),
            // Results list
            Expanded(
              child: filteredServices.isEmpty
                  ? const Center(child: Text("No services available"))
                  : ListView.builder(
                itemCount: filteredServices.length,
                itemBuilder: (context, index) {
                  final service = filteredServices[index];
                  return Card(
                    margin: const EdgeInsets.only(bottom: 12),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            service['type'] == "Hospital"
                                ? Icons.local_hospital
                                : Icons.local_shipping,
                            color: const Color(0xff9f2026),
                            size: 40,
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(service['name'] ?? "",
                                    style: const TextStyle(
                                        fontSize: 18, fontWeight: FontWeight.bold)),
                                const SizedBox(height: 4),
                                Text(service['address'] ?? ""),
                                const SizedBox(height: 4),
                                Text(
                                    "Blood Group: ${service['bloodGroup'] ?? 'Any'} | Type: ${service['type']}"),
                                const SizedBox(height: 4),
                                Text("Contact: ${service['contact'] ?? ''}"),
                              ],
                            ),
                          ),
                          IconButton(
                            icon: const Icon(Icons.call, color: Color(0xff9f2026)),
                            onPressed: () {
                              final phone = service['contact'] ?? '';
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text("Phone: $phone")),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}