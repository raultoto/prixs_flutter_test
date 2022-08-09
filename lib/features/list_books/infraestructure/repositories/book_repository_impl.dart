import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/seach_obj.dart';
import '../../domain/repositories/book_repository.dart';
import 'package:http/http.dart' as http;

@LazySingleton(as: BookRepository)
class BookRepositoryImpl implements BookRepository {
  @override
  Future<Either<String, List<Doc>>> searchBookByName(String name) async {
    try {
      final url = Uri.http('www.openlibrary.org', '/search.json?author=tolkien');
      final response = await http.get(url);
      print(response.body);
      return Right([]);
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, List<Doc>>> searchBookByAuthor(String authorName) async {
    try {
      final url = Uri.http('www.openlibrary.org', '/search.json?author=tolkien');
      final response = await http.get(url);
      print(response.body);
      return Right([]);
    } catch (e) {
      return Left(e.toString());
    }
  }
}
