import 'package:flutter/material.dart';
import 'package:prixs_flutter_test/features/form/presentation/pages/form_page.dart';
import 'package:prixs_flutter_test/features/list_books/presentation/pages/books_page.dart';
class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final pages=[BooksPage(),FormPage()];
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex=value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Form',
            icon: Icon(Icons.format_list_bulleted)
          ),
        ],
      ),
    );
  }
}