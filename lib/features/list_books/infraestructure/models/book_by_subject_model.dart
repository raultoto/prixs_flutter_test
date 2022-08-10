
import 'dart:convert';

import 'package:prixs_flutter_test/features/list_books/domain/entities/author.dart';

import '../../domain/entities/book_by_subject.dart';

class BookBySubjectModel extends BookBySubject {
  BookBySubjectModel({
    key,
    title,
    editionCount,
    coverId,
    coverEditionKey,
    subject,
    iaCollection,
    lendinglibrary,
    printdisabled,
    lendingEdition,
    lendingIdentifier,
    authors,
    firstPublishYear,
    ia,
    publicScan,
    hasFulltext,
  }) : super(
          key: key,
          title: title,
          editionCount: editionCount,
          coverId: coverId,
          coverEditionKey: coverEditionKey,
          subject: subject,
          iaCollection: iaCollection,
          lendinglibrary: lendinglibrary,
          printdisabled: printdisabled,
          lendingEdition: lendingEdition,
          lendingIdentifier: lendingIdentifier,
          authors: authors,
          firstPublishYear: firstPublishYear,
          ia: ia,
          publicScan: publicScan,
          hasFulltext: hasFulltext,
        );

  factory BookBySubjectModel.fromRawJson(String str) => BookBySubjectModel.fromJson(json.decode(str));

  factory BookBySubjectModel.fromJson(Map<String, dynamic> json) => BookBySubjectModel(
        key: json["key"],
        title: json["title"],
        editionCount: json["edition_count"],
        coverId: json["cover_id"],
        coverEditionKey: json["cover_edition_key"],
        subject: json["subject"] == null ? null : List<String>.from(json["subject"].map((x) => x)),
        iaCollection: json["ia_collection"] == null ? null : List<String>.from(json["ia_collection"].map((x) => x)),
        lendinglibrary: json["lendinglibrary"],
        printdisabled: json["printdisabled"],
        lendingEdition: json["lending_edition"],
        lendingIdentifier: json["lending_identifier"],
        authors: json["authors"] == null ? null : List<AuthorModel>.from(json["authors"].map((x) => AuthorModel.fromJson(x))),
        firstPublishYear: json["first_publish_year"],
        ia: json["ia"],
        publicScan: json["public_scan"],
        hasFulltext: json["has_fulltext"],
      );
}

class AuthorModel extends Author {
  AuthorModel({
    key,
    name,
  }):super(
    key: key,
    name: name,
  );

  factory AuthorModel.fromRawJson(String str) => AuthorModel.fromJson(json.decode(str));

  factory AuthorModel.fromJson(Map<String, dynamic> json) => AuthorModel(
        key: json["key"],
        name: json["name"],
      );
}
