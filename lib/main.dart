import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:prixs_flutter_test/features/list_books/presentation/pages/books_page.dart';
import 'injection.dart';

void main() async {
  await configureInjection(Environment.dev);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', debugShowCheckedModeBanner: false, home: BooksPage());
  }
}
