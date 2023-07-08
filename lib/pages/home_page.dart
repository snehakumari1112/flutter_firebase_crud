import 'package:flutter/material.dart';

import 'Add_Student_Page.dart';
import 'list_student_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Flutter Firestore CRUD'),
            ElevatedButton(
              onPressed: () => {
                Navigator.push(
                  context,
                   MaterialPageRoute(
                    builder: (context) => AddStudentPage(),
                    ),
                    ),
              }, 
              child:  const Text(
                'Add',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              style: ElevatedButton.styleFrom(primary: Colors.deepPurple),
              ),
          ],
        ),
      ),
      body: ListStudentPage(),
    );
  }
}