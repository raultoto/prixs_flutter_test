import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import 'features/list_books/presentation/pages/books_page.dart';
import 'injection.dart';

void main() async {
  await configureInjection(Environment.dev);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      home: BooksPage(),
    );
  }
}
