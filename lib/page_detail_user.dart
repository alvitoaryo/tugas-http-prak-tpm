import 'package:flutter/material.dart';
import 'users_model.dart';

class PageDetailUser extends StatelessWidget {
  final Data userData;

  const PageDetailUser({Key? key, required this.userData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail User"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
        padding: const EdgeInsets.all(20),
            child: Container(
              width: 100,
              child: Image.network(userData.avatar!),
            ),
    ),
            SizedBox(height: 10.0),
            Text("${userData.firstName} ${userData.lastName}",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              "${userData.email}",
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}
