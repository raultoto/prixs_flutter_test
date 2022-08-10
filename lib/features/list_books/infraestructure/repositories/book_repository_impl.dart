import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:prixs_flutter_test/features/list_books/domain/entities/book_by_subject.dart';
import 'package:prixs_flutter_test/features/list_books/infraestructure/models/book_by_subject_model.dart';
import '../models/doc_model.dart';

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
      final decodedData = json.decode(response.body);
      final searchModel = SearchModel.fromJson(decodedData);
      return Right(searchModel.docs);
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, List<Doc>>> searchBookByAuthor(String authorName) async {
    try {
      final url = Uri.http('www.openlibrary.org', '/search.json?author=tolkien');
      final response = await http.get(url);
      final decodedData = json.decode(response.body);
      final searchModel = SearchModel.fromJson(decodedData);
      return Right(searchModel.docs);
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, List<BookBySubject>>> searchBookByCategory(String categoryName) async {
    try {
      final url = Uri.http('www.openlibrary.org', '/subjects/$categoryName.json');
      final response = await http.get(url);
      final decodedData = json.decode(response.body)['works'];
      final booksBySubject = List.generate(decodedData.length, (i) {
        return BookBySubjectModel.fromJson(decodedData[i]);
      });
      return Right(booksBySubject);
    } catch (e) {
      return Left(e.toString());
    }
  }
}
