import 'package:flutter/material.dart';

class LatihanStateManagement extends StatefulWidget {
  const LatihanStateManagement({super.key});

  @override
  State<LatihanStateManagement> createState() => _LatihanStateManagementState();
}

class _LatihanStateManagementState extends State<LatihanStateManagement> {
  // List data awal
  List<String> items = [
    "Belajar Flutter",
    "State Management",
    "ListView",
    "SetState",
    "Hapus Item",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Latihan State Management"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(items[index]),
              onTap: () {
                setState(() {
                  items.removeAt(index); // Menghapus item ketika di klik
                });

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      "Item '${items[index >= items.length ? items.length - 1 : index]}' dihapus",
                    ),
                    duration: const Duration(seconds: 1),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
