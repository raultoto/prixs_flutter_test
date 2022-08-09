part of 'search_book_bloc.dart';

@freezed
class SearchBookState with _$SearchBookState {
  const factory SearchBookState.initial() = _Initial;
  const factory SearchBookState.loading() = _Loading;
  const factory SearchBookState.sucess(List<Doc> docs) = _Sucess;
  const factory SearchBookState.failure(String failure) = _Failure;
}
