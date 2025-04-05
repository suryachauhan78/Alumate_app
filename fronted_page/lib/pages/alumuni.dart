import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AlumniListPage extends StatelessWidget {
  const AlumniListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true, // Ensure the back arrow is visible
  iconTheme: IconThemeData(color: Colors.white),
        title: Row(
          children: [
           
            Text("Alumni", style: TextStyle(color: Colors.white),),
          ],
        ),
        backgroundColor: Colors.black,
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('alumni').snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
            return Center(child: Text("No Alumni Found"));
          }
          
          return ListView.builder(
            itemCount: snapshot.data!.docs.length,
            itemBuilder: (context, index) {
              var alumni = snapshot.data!.docs[index];
              return AlumniCard(
                name: alumni['name'],
                role: alumni['role'],
                imageUrl: alumni['imageUrl'],
              );
            },
          );
        },
      ),
    );
  }
}

class AlumniCard extends StatelessWidget {
  final String name;
  final String role;
  final String imageUrl;

   const AlumniCard({super.key, required this.name, required this.role, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(imageUrl),
            radius: 25,
          ),
          title: Text(
            name,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(role),
        ),
      ),
    );
  }
}
