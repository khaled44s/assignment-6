import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({super.key});

  final List<Map<String, String>> data = const [
    {"name": "Khaled Ahmed", "designation": "Flutter Developer"},
    {"name": "Sara Rahman", "designation": "UI/UX Designer"},
    {"name": "Imran Hossain", "designation": "Backend Engineer"},
    {"name": "Rafiq", "designation": "Data Scientist"},
    {"name": "Nadia", "designation": "AI Researcher"},
  ];

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    backgroundColor: Colors.deepPurple[300],
      appBar: AppBar(backgroundColor: Colors.deepPurple[300], title: Center(child: const Text("ListView Page", style: TextStyle(color: Colors.white),))),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.person),
            title: Text(data[index]["name"]!, style: TextStyle(color: Colors.white),),
            subtitle: Text(data[index]["designation"]!, style: TextStyle(color: Colors.white),),
          );
        },
      ),
    );
  }
}


