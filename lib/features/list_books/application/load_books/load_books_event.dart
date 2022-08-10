part of 'load_books_bloc.dart';

@freezed
class LoadBooksEvent with _$LoadBooksEvent {
  const factory LoadBooksEvent.watch(String subject) = _Watch;
}