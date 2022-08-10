
import 'author.dart';

class BookBySubject {
  BookBySubject({
    this.key,
    this.title,
    this.editionCount,
    this.coverId,
    this.coverEditionKey,
    this.subject,
    this.iaCollection,
    this.lendinglibrary,
    this.printdisabled,
    this.lendingEdition,
    this.lendingIdentifier,
    this.authors,
    this.firstPublishYear,
    this.ia,
    this.publicScan,
    this.hasFulltext,
  });

  final String? key;
  final String? title;
  final int? editionCount;
  final int? coverId;
  final String? coverEditionKey;
  final List<String>? subject;
  final List<String>? iaCollection;
  final bool? lendinglibrary;
  final bool? printdisabled;
  final String? lendingEdition;
  final String? lendingIdentifier;
  final List<Author>? authors;
  final dynamic firstPublishYear;
  final String? ia;
  final bool? publicScan;
  final bool? hasFulltext;
}
