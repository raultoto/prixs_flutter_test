import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../domain/entities/book_by_subject.dart';
import '../models/book_by_subject_model.dart';
import '../models/doc_model.dart';

import '../../domain/entities/seach_obj.dart';
import '../../domain/repositories/book_repository.dart';
import 'package:http/http.dart' as http;

@LazySingleton(as: BookRepository)
class BookRepositoryImpl implements BookRepository {
  /// We're making a GET request to the OpenLibrary API, decoding the response, and returning the decoded
  /// data as a list of Docs
  ///
  /// Args:
  ///   name (String): The name of the book you want to search for.
  ///
  /// Returns:
  ///   Either<String, List<Doc>>
  @override
  Future<Either<String, List<Doc>>> searchBookByName(String name) async {
    try {
      final url = Uri.http('www.openlibrary.org', '/search.json?q=$name');
      final response = await http.get(url);
      final decodedData = json.decode(response.body);
      final searchModel = SearchModel.fromJson(decodedData);
      return Right(searchModel.docs);
    } catch (e) {
      return Left(e.toString());
    }
  }

  /// It searches for books by author name.
  ///
  /// Args:
  ///   authorName (String): The name of the author you want to search for.
  ///
  /// Returns:
  ///   Either<String, List<Doc>>
  @override
  Future<Either<String, List<Doc>>> searchBookByAuthor(String authorName) async {
    try {
      final url = Uri.http('www.openlibrary.org', '/search.json?author=$authorName');
      final response = await http.get(url);
      final decodedData = json.decode(response.body);
      final searchModel = SearchModel.fromJson(decodedData);
      return Right(searchModel.docs);
    } catch (e) {
      return Left(e.toString());
    }
  }

  /// We're making a GET request to the Open Library API, decoding the response, and returning a list of
  /// books
  ///
  /// Args:
  ///   categoryName (String): The name of the category you want to search for.
  ///
  /// Returns:
  ///   Either<String, List<BookBySubject>>
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
