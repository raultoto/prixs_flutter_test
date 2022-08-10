import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prixs_flutter_test/features/list_books/application/load_books/load_books_bloc.dart';
import 'package:prixs_flutter_test/features/list_books/presentation/widgets/book_loading.dart';
import 'package:prixs_flutter_test/features/list_books/presentation/widgets/books_data.dart';
import 'package:prixs_flutter_test/injection.dart';

class BookListBlock extends StatelessWidget {
  final String title;
  final LoadBooksEvent event;
  const BookListBlock({
    Key? key,
    required this.title,
    required this.event,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<LoadBooksBloc>()
        ..add(
          event,
        ),
      child: BlocBuilder<LoadBooksBloc, LoadBooksState>(
        builder: (context, state) {
          return state.map(
            initial: (_) => const BookLoading(),
            loading: (_) => const BookLoading(),
            sucess: (r) => BooksData(booksBySubject: r.books, title: title),
            failure: (_) => SizedBox(),
          );
        },
      ),
    );
  }
}
