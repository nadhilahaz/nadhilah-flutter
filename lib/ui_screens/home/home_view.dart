import 'package:flutter/material.dart';
import 'dart:html' as html;

import 'package:staticnadhilah/ui_screens/product/a.product_list/_index.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 122, 93, 82),
        title: const Text('Nadhilah'),
        actions: [
          Center(
            child: MaterialButton(
              onPressed: () {
                html.window.open('https://github.com/nadhilahaz/nadhilah-flutter', 'new');
              },
              color: const Color.fromARGB(255, 216, 191, 182),
              splashColor: Colors.black,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text(
                'Git Hub',
                style: TextStyle(
                  fontWeight: FontWeight.w200,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          // Add your list view items here
          ListTile(
            leading: const Icon(Icons.book),
            title: const Text('FIREBASE'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return const ProductListView(); // Gantilah dengan nama kelas halaman yang sesuai
                },
              ));
            },
          ),
          // ListTile(
          //   leading: const Icon(Icons.book_online),
          //   title: const Text('Item 1'),
          //   onTap: () {
          //     print('hai');
          //   },
          // ),

          // Add more list items as needed
        ],
      ),
    );
  }
}
