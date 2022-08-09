import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../application/seach_book/search_book_bloc.dart';
import '../../../../injection.dart';
import '../../../../shared/search_book_types.dart';

class BooksPage extends StatelessWidget {
  const BooksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Books'),
      ),
      body: BlocProvider(
        create: (context) => getIt<SearchBookBloc>()
          ..add(
            const SearchBookEvent.watch('test', SearchBookTypes.byAuthor),
          ),
        child: BlocBuilder<SearchBookBloc, SearchBookState>(
          builder: (context, state) {
            return state.map(
              initial: (_) => const SizedBox(),
              loading: (_) => const Center(child: CircularProgressIndicator()),
              sucess: (_) => SizedBox(),
              failure: (_) => SizedBox(),
            );
          },
        ),
      ),
    );
  }
}
