import 'package:bab_2_widget/models/item_model.dart';
import 'package:bab_2_widget/widgets/card_item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<ItemModel> items = [
    ItemModel(
        id: '1', name: 'Text', route: '/text', description: 'Description 1'),
    ItemModel(
        id: '2',
        name: 'Container',
        route: '/container',
        description: 'Description 2'),
    ItemModel(
        id: '3', name: 'Row', route: '/row', description: 'Description 3'),
    ItemModel(
        id: '4',
        name: 'Column',
        route: '/column',
        description: 'Description 4'),
    ItemModel(
        id: '5',
        name: 'Column & Row',
        route: '/column_row',
        description: 'Description 5'),
    ItemModel(
        id: '6',
        name: 'Elevated Button',
        route: '/elevated_button',
        description: 'Description 6'),
    ItemModel(
        id: '7',
        name: 'TextField',
        route: '/textfield',
        description: 'Description 7'),
    ItemModel(
        id: '8', name: 'Icon', route: '/icon', description: 'Description 8'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            pinned: true,
            backgroundColor: Colors.white,
            expandedHeight: 100.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'Bab 2 widget',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              centerTitle: true,
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(15),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return CardItem(
                    name: items[index].name,
                    onTap: () {
                      Navigator.pushNamed(context, items[index].route);
                    },
                  );
                },
                childCount: items.length,
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
                childAspectRatio: 1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
