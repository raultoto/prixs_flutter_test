// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'features/list_books/application/load_books/load_books_bloc.dart' as _i5;
import 'features/list_books/application/seach_book/search_book_bloc.dart'
    as _i6;
import 'features/list_books/domain/repositories/book_repository.dart' as _i3;
import 'features/list_books/infraestructure/repositories/book_repository_impl.dart'
    as _i4; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.BookRepository>(() => _i4.BookRepositoryImpl());
  gh.factory<_i5.LoadBooksBloc>(
      () => _i5.LoadBooksBloc(get<_i3.BookRepository>()));
  gh.factory<_i6.SearchBookBloc>(
      () => _i6.SearchBookBloc(get<_i3.BookRepository>()));
  return get;
}
