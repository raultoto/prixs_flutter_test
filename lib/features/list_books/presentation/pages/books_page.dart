import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prixs_flutter_test/features/list_books/application/seach_book/search_book_bloc.dart';
import 'package:prixs_flutter_test/features/list_books/domain/entities/seach_obj.dart';
import 'package:prixs_flutter_test/features/list_books/presentation/widgets/book_detail.dart';
import 'package:prixs_flutter_test/injection.dart';
import 'package:prixs_flutter_test/shared/search_book_types.dart';

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
        actions: [
          IconButton(
            onPressed: () {
              showSearch(context: context, delegate: CustomSearchDeleteBookList());
            },
            icon: const Icon(Icons.search),
          ),
        ],
        elevation: 0.0,
        backgroundColor: Colors.transparent,
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

class CustomSearchDeleteBookList extends SearchDelegate {
  List<DropdownMenuItem<String>> menuItems = [
    const DropdownMenuItem(child: Text("Book"), value: "book"),
    const DropdownMenuItem(child: Text("Author"), value: "author"),
  ];
  List<Doc> books = [];
  String? dropdownMenuItem;
  @override
  String get searchFieldLabel => "Search by";

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      query != ''
          ? IconButton(
              onPressed: () {
                query = '';
              },
              icon: const Icon(Icons.clear),
            )
          : const SizedBox(),
      DropdownButton(
        icon: const Icon(Icons.filter_list),
        value: dropdownMenuItem ?? menuItems.first.value,
        items: menuItems,
        onChanged: (String? value) {
          dropdownMenuItem = value;
          query = '';
        },
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SearchBookBloc>()
        ..add(
          SearchBookEvent.watch(query, (dropdownMenuItem ?? 'book') == 'book' ? SearchBookTypes.byName : SearchBookTypes.byAuthor),
        ),
      child: BlocBuilder<SearchBookBloc, SearchBookState>(
        builder: (context, state) {
          return state.map(
            initial: (_) => const SizedBox(),
            loading: (_) => const Center(child: CircularProgressIndicator()),
            sucess: (value) {
              books = value.docs;
              return ListView.builder(
                itemCount: value.docs.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => BookDetail(
                            book: value.docs[index],
                          ),
                        ),
                      );
                    },
                    title: Text(value.docs[index].title ?? ''),
                    subtitle: Text(value.docs[index].authorName?.first ?? ''),
                  );
                },
              );
            },
            failure: (_) => const SizedBox(),
          );
        },
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return ListView.builder(
      itemCount: books.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          onTap: () {
            //navigate to the book detail page
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => BookDetail(
                  book: books[index],
                ),
              ),
            );
          },
          title: Text(books[index].title ?? ''),
          subtitle: Text(books[index].authorName?.first ?? ''),
        );
      },
    );
  }
}
