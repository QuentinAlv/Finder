import 'package:flutter/material.dart';
import 'package:bachelor/data.dart';
import 'package:bachelor/models/bachelor.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    List<Bachelor> bachelors = generateBachelors();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: ListView.builder(
        itemCount: bachelors.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.asset(bachelors[index].avatar),
            title: Text(
                '${bachelors[index].firstname} ${bachelors[index].lastname}'),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  bachelors[index].job,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Text(
                  bachelors[index].description,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
