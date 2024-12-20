import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/TestDetailPage.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> testCategories = [
      "Mathematics",
      "Science",
      "History",
      "Geography",
      "English",
      "Computer Science",
    ];

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Select a Test Category:",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: testCategories.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: ListTile(
                    title: Text(testCategories[index]),
                    trailing: const Icon(Icons.arrow_forward),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TestDetailPage(
                              testCategory: testCategories[index]),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
