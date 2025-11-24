import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: "Flutter Demo"),
    );
  }
}

List<String> templist = ["Item 1", "Item 2", "Item 3"];
List<bool> favoriteStatus = [false, false, false];

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void tambah() {
    setState(() {
      templist.add("New Item");
      favoriteStatus.add(false);
    });
  }

  void deleteItem(int index) {
    setState(() {
      templist.removeAt(index);
      favoriteStatus.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tambah & Hapus ListView"),
        actions: [
          IconButton(onPressed: tambah, icon: const Icon(Icons.add)),
          Row(
            children: [
              const Icon(Icons.favorite, color: Colors.red),
              Text(
                favoriteStatus.where((e) => e == true).length.toString(),
                style: const TextStyle(fontSize: 18),
              ),
              const SizedBox(width: 16),
            ],
          ),
        ],
      ),

      body: ListView.builder(
        itemCount: templist.length,
        itemBuilder: (context, index) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.15,
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.transparent, width: 3),
            ),
            child: Row(
              children: [
                const SizedBox(width: 10),

                Expanded(
                  child: Text(
                    templist[index],
                    style: const TextStyle(fontSize: 22),
                  ),
                ),

                // FAVORITE BUTTON (langsung mapping)
                IconButton(
                  onPressed: () {
                    setState(() {
                      favoriteStatus[index] = !favoriteStatus[index];
                    });
                  },
                  icon: Icon(
                    favoriteStatus[index]
                        ? Icons.favorite
                        : Icons.favorite_border,
                    color: favoriteStatus[index] ? Colors.red : Colors.black,
                  ),
                ),

                // DELETE BUTTON
                IconButton(
                  onPressed: () => deleteItem(index),
                  icon: const Icon(Icons.delete),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
