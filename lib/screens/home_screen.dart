import 'package:flutter/material.dart';
import 'architecture_selection_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final List<Map<String, dynamic>> modules = [

      {
        "title": "01 Basic Counter",
        "screen": const ArchitectureSelectionScreen(
          moduleTitle: "01 Basic Counter",
        ),
      },

      {
        "title": "02 Theme Switch",
        "screen": const SizedBox(),
      },

      {
        "title": "03 Todo CRUD",
        "screen": const SizedBox(),
      },

      {
        "title": "04 Form Validation",
        "screen": const SizedBox(),
      },

      {
        "title": "05 API Call",
        "screen": const SizedBox(),
      },

    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Flutter  Project',
        ),
      ),

      body: ListView.builder(
        itemCount: modules.length,
        itemBuilder: (context, index) {
          final module = modules[index];
          return ListTile(
            title: Text(module["title"]),
            trailing: const Icon(
              Icons.arrow_forward_ios,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => module["screen"],
                ),
              );

            },
          );
        },
      ),
    );
  }
}