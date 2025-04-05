import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class PostPage extends StatelessWidget {
  const PostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         automaticallyImplyLeading: true, // Ensure the back arrow is visible
  iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
        title: Row(
          children: [
            
            Text("Posts", style: TextStyle(color: Colors.white), ),
          ],
        ), 
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('posts').snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
            return Center(child: Text("No posts available"));
          }
          return ListView.builder(
            itemCount: snapshot.data!.docs.length,
            itemBuilder: (context, index) {
              var post = snapshot.data!.docs[index];
              return Card(
                margin: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(post['userProfileImage']),
                      ),
                      title: Text(post['userName']),
                      subtitle: Text(post['timestamp']),
                    ),
                    if (post['imageUrl'] != null && post['imageUrl'].isNotEmpty)
                      Image.network(post['imageUrl']),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(post['caption'] ?? ""),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
