part of 'search_book_bloc.dart';

@freezed
class SearchBookEvent with _$SearchBookEvent {
  const factory SearchBookEvent.watch(String input,SearchBookTypes type) = _Watch;
}