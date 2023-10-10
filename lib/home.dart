import 'package:flutter/material.dart';
import 'dart:html' as html;

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nadhilah'),
        actions: [
          Center(
            child: MaterialButton(
              onPressed: () {
                html.window.open('https://github.com/nadhilahaz/nadhilah-flutter', 'new');
              },
              color: const Color.fromARGB(255, 185, 212, 239),
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
    );
  }
}
