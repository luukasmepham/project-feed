import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Post extends StatelessWidget {
  final String documentId;

  Post(this.documentId);

  @override
  Widget build(BuildContext context) {
    CollectionReference posts = FirebaseFirestore.instance.collection('posts');

    return FutureBuilder<DocumentSnapshot>(
      future: posts.doc(documentId).get(),
      builder:
          (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
        if (snapshot.hasError) {
          return Center(
            child: Container(
              margin: EdgeInsets.all(8.0),
              padding: EdgeInsets.all(12.0),
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromARGB(255, 22, 196, 37),
                  width: 3,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text('Something went wrong' + documentId),
            ),
          );
        }

        if (snapshot.hasData && !snapshot.data!.exists) {
          return Center(
            child: Container(
              margin: EdgeInsets.all(8.0),
              padding: EdgeInsets.all(12.0),
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromARGB(255, 22, 196, 37),
                  width: 3,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text("This document does not exist."),
            ),
          );
        }

        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data =
              snapshot.data!.data() as Map<String, dynamic>;
          return Center(
            child: Container(
              margin: EdgeInsets.all(8.0),
              padding: EdgeInsets.all(12.0),
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromARGB(255, 22, 196, 37),
                  width: 3,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text('${data['content']}'),
            ),
          );
        }
        return Center(
          child: Container(
            margin: EdgeInsets.all(8.0),
            padding: EdgeInsets.all(12.0),
            height: MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
              border: Border.all(
                color: Color.fromARGB(255, 22, 196, 37),
                width: 3,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text('loading...'),
          ),
        );
      },
    );
  }
}
