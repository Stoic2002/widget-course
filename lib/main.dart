import 'package:bab_2_widget/pages/home/container_page.dart';
import 'package:bab_2_widget/pages/home/elevated_button.dart';
import 'package:bab_2_widget/pages/home/icon_page.dart';
import 'package:bab_2_widget/pages/home/row_column_page.dart';
import 'package:bab_2_widget/pages/home/text_page.dart';
import 'package:bab_2_widget/pages/home/textfield_page.dart';
import 'package:bab_2_widget/pages/home_page.dart';
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
      title: 'Bab 2 Widget',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/text': (context) => const TextPage(),
        '/container': (context) => const ContainerPage(),
        '/row': (context) => const RowPage(),
        '/column': (context) => const ColumnPage(),
        '/column_row': (context) => const ColumnRowPage(),
        '/elevated_button': (context) => const ElevatedButtonPage(),
        '/textfield': (context) => const TextFieldPage(),
        '/icon': (context) => const IconPage(),
      },
    );
  }
}
