import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: VehiclePage(),
    );
  }
}

class VehiclePage extends StatelessWidget {
  final List<Map<String, dynamic>> menuItems = [
    {"icon": Icons.fire_truck, "title": "Vehicle Type"},
    {"icon": Icons.directions_car, "title": "Vehicle Name"},
    {"icon": Icons.car_repair, "title": "Brand / model"},
    {"icon": Icons.confirmation_num, "title": "Chassis Number"},
    {"icon": Icons.article, "title": "RC Copy"},
    {"icon": Icons.local_gas_station, "title": "Fuel Policy"},
    {"icon": Icons.photo_camera, "title": "Vehicle photo with owner"},
    {"icon": Icons.swap_horiz, "title": "Shifting money"},
    {"icon": Icons.description, "title": "Vehicle description"},
    {"icon": Icons.card_membership, "title": "Driving License"},
    {"icon": Icons.payment, "title": "Payment"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [

            Container(
              color: Colors.green,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(Icons.person, color: Colors.black),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 8),
                          Icon(Icons.search, color: Colors.black54),
                          SizedBox(width: 5),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Search",
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          Icon(Icons.mic, color: Colors.black),
                          SizedBox(width: 8),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Icon(Icons.notifications_none, color: Colors.white, size: 28),
                  SizedBox(width: 10),
                  Icon(Icons.settings, color: Colors.white, size: 28),
                ],
              ),
            ),


            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.all(16),
                itemCount: menuItems.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.white,
                        side: BorderSide(color: Colors.black12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 14, horizontal: 12),
                        elevation: 0,
                      ),
                      onPressed: () {},
                      icon: Icon(menuItems[index]["icon"], color: Colors.black87),
                      label: Text(
                        menuItems[index]["title"],
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  );
                },
              ),
            ),


            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Align(
                alignment: Alignment.bottomRight,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 22,
                  child: Icon(Icons.volume_up, color: Colors.black),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}