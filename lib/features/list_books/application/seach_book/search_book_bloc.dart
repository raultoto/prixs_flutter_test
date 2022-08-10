import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../shared/search_book_types.dart';
import '../../domain/entities/seach_obj.dart';
import '../../domain/repositories/book_repository.dart';

part 'search_book_bloc.freezed.dart';
part 'search_book_event.dart';
part 'search_book_state.dart';

@injectable
class SearchBookBloc extends Bloc<SearchBookEvent, SearchBookState> {
  final BookRepository _bookRepository;
  SearchBookBloc(this._bookRepository) : super(const _Initial()) {
    on<SearchBookEvent>(_onEvent);
  }
  Future<void> _onEvent(
    SearchBookEvent event,
    Emitter<SearchBookState> emit,
  ) {
    return event.map(watch: (e) async {
      emit(const SearchBookState.loading());
      final result = await searchTypesToFunction(e.type)(e.input);
      emit(
        result.fold(
          (failure) => SearchBookState.failure(failure),
          (body) {
            return SearchBookState.sucess(body);
          },
        ),
      );
    });
  }

  searchTypesToFunction(SearchBookTypes type) {
    return {
      SearchBookTypes.byName: _bookRepository.searchBookByName,
      SearchBookTypes.byAuthor: _bookRepository.searchBookByAuthor,
    }[type];
  }
}
