import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Main Page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  //MaterialPageRoute(builder: (context) => const ListViewPage()),
                );
              },
              child: const Text("Go to ListView Page"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  //MaterialPageRoute(builder: (context) => const GridViewPage()),
                );
              },
              child: const Text("Go to GridView Page"),
            ),
          ],
        ),
      ),
    );
  }
}

