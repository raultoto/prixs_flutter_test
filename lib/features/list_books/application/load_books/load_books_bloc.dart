import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:prixs_flutter_test/features/list_books/domain/repositories/book_repository.dart';

import '../../domain/entities/book_by_subject.dart';

part 'load_books_bloc.freezed.dart';
part 'load_books_event.dart';
part 'load_books_state.dart';

@injectable
class LoadBooksBloc extends Bloc<LoadBooksEvent, LoadBooksState> {
  final BookRepository _bookRepository;

  LoadBooksBloc(this._bookRepository) : super(const _Initial()) {
    on<LoadBooksEvent>(_onSvgToMuscleEvent);
  }
  Future<void> _onSvgToMuscleEvent(
    LoadBooksEvent event,
    Emitter<LoadBooksState> emit,
  ) {
    return event.map(
      watch: (e) async {
        emit(const LoadBooksState.loading());
        final result = await _bookRepository.searchBookByCategory(e.subject);
        emit(
          result.fold(
            (failure) => LoadBooksState.failure(failure),
            (body) => LoadBooksState.sucess(body),
          ),
        );
      },
    );
  }
}
