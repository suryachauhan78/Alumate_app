import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  final List<Map<String, dynamic>> notifications = [
    {
      "name": "kunal chauhan",
      "image": "assets/images/aman.jpg", // Replace with your asset image
      "count": 2,
    },
    {
      "name": "partibha chauhan",
      "image": "assets/images/elly.jpg", // Replace with your asset image
      "count": 5,
    },
    {
      "name": "Angela Chauhan",
      "image": "assets/images/angela.jpg", // Replace with your asset image
      "count": 1,
    },
  ];

   NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notification", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: ListView.separated(
        itemCount: notifications.length,
        separatorBuilder: (context, index) => SizedBox(height: 10), // 👈 Adds space between items
        itemBuilder: (context, index) {
          final notification = notifications[index];
          return ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8), // 👈 Adds padding inside each item
            leading: CircleAvatar(
              backgroundImage: AssetImage(notification["image"]),
              radius: 25,
            ),
            title: Text(notification["name"], style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
            trailing: CircleAvatar(
              backgroundColor: Colors.grey[300],
              radius: 14,
              child: Text(
                notification["count"].toString(),
                style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ),
          );
        },
      ),
    );
  }
}
