import 'package:flutter/material.dart';

import '../../../../shared/constants/book_categories.dart';
import '../../application/load_books/load_books_bloc.dart';
import '../widgets/book_list_block.dart';

class BooksPage extends StatelessWidget {
  const BooksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Books'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: bookCategories.entries.map((entry) {
            final title = entry.value;
            final event = LoadBooksEvent.watch(entry.key);
            return BookListBlock(
              title: title,
              event: event,
            );
          }).toList(),
        ),
      ),
    );
  }
}
