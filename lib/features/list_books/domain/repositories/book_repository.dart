import 'package:dartz/dartz.dart';
import '../entities/book_by_subject.dart';
import '../entities/seach_obj.dart';

abstract class BookRepository {
  Future<Either<String, List<Doc>>> searchBookByName(String bookName);
  Future<Either<String, List<Doc>>> searchBookByAuthor(String authorName);
  Future<Either<String, List<BookBySubject>>> searchBookByCategory(String categoryName);
}
