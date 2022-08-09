import 'package:dartz/dartz.dart';
import '../entities/seach_obj.dart';

abstract class BookRepository {
  Future<Either<String, List<Doc>>> searchBookByName(String bookName);
  Future<Either<String, List<Doc>>> searchBookByAuthor(String authorName);
}
