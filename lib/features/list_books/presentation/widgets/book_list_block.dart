import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../application/load_books/load_books_bloc.dart';
import 'book_loading.dart';
import 'books_data.dart';
import '../../../../injection.dart';

class BookListBlock extends StatelessWidget {
/// `showDatePicker` is a function that takes a `BuildContext` and returns a `Future<DateTime?>`
/// 
/// The `?` after `DateTime` means that the return value can be `null`
/// 
/// Args:
///   context (BuildContext): The context of the widget that calls the showDatePicker() method.
/// 
/// Returns:
///   A Future<DateTime?>
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
            failure: (_) => const SizedBox(),
          );
        },
      ),
    );
  }
}
