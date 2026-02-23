import 'package:flutter/material.dart';
import 'phrase_list_screen.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  final List<String> categories = const [
    'Basics',
    'Travel',
    'Food',
    'Work',
    'Slang',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Spanish Categories')),
      body: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          return ListTile(
            title: Text(category),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => PhraseListScreen(category: category),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
