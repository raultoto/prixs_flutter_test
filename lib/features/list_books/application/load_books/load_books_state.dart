part of 'load_books_bloc.dart';

@freezed
class LoadBooksState with _$LoadBooksState {
  const factory LoadBooksState.initial() = _Initial;
  const factory LoadBooksState.loading() = _Loading;
  const factory LoadBooksState.sucess(List<BookBySubject> books) = _Sucess;
  const factory LoadBooksState.failure(String failure) = _Failure;
}
