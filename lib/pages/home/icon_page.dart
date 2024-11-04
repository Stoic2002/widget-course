import 'package:flutter/material.dart';

class IconPage extends StatefulWidget {
  const IconPage({super.key});

  @override
  State<IconPage> createState() => _IconPageState();
}

class _IconPageState extends State<IconPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Icon',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Basic Icon
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 48,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 48,
                    ),
                    Icon(
                      Icons.thumb_up,
                      color: Colors.blue,
                      size: 48,
                    ),
                  ],
                ),
                const SizedBox(height: 32),

                // Icon with Container background
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.red.shade100,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Icon(
                        Icons.notifications,
                        color: Colors.red,
                        size: 32,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.blue.shade100,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Icon(
                        Icons.message,
                        color: Colors.blue,
                        size: 32,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.green.shade100,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Icon(
                        Icons.check_circle,
                        color: Colors.green,
                        size: 32,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 32),

                // Icon Button examples
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.home),
                      color: Colors.indigo,
                      iconSize: 32,
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(Icons.settings),
                      color: Colors.grey,
                      iconSize: 32,
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(Icons.person),
                      color: Colors.purple,
                      iconSize: 32,
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
