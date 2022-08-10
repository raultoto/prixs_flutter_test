class Welcome {
  Welcome({
    required this.numFound,
    required this.start,
    required this.numFoundExact,
    required this.docs,
  });

  final int numFound;
  final int start;
  final bool numFoundExact;
  final List<Doc> docs;
}

class Doc {
  Doc({
    this.key,
    this.type,
    this.seed,
    this.title,
    this.titleSuggest,
    this.editionCount,
    this.editionKey,
    this.publishDate,
    this.publishYear,
    this.firstPublishYear,
    this.numberOfPagesMedian,
    this.lccn,
    this.publishPlace,
    this.oclc,
    this.contributor,
    this.lcc,
    this.ddc,
    this.isbn,
    this.lastModifiedI,
    this.ebookCountI,
    this.hasFulltext,
    this.publicScanB,
    this.ia,
    this.iaCollectionS,
    this.lendingEditionS,
    this.lendingIdentifierS,
    this.printdisabledS,
    this.coverEditionKey,
    this.coverI,
    this.publisher,
    this.language,
    this.authorKey,
    this.authorName,
    this.authorAlternativeName,
    this.person,
    this.place,
    this.subject,
    this.time,
    this.idAlibrisId,
    this.idAmazon,
    this.idCanadianNationalLibraryArchive,
    this.idDepsitoLegal,
    this.idGoodreads,
    this.idGoogle,
    this.idLibrarything,
    this.idOverdrive,
    this.idPaperbackSwap,
    this.idWikidata,
    this.iaLoadedId,
    this.iaBoxId,
    this.publisherFacet,
    this.personKey,
    this.placeKey,
    this.timeFacet,
    this.personFacet,
    this.subjectFacet,
    this.version,
    this.placeFacet,
    this.lccSort,
    this.authorFacet,
    this.subjectKey,
    this.ddcSort,
    this.timeKey,
  });

  final String? key;
  final String? type;
  final List<String>? seed;
  final String? title;
  final String? titleSuggest;
  final int? editionCount;
  final List<String>? editionKey;
  final List<String>? publishDate;
  final List<int>? publishYear;
  final int? firstPublishYear;
  final int? numberOfPagesMedian;
  final List<String>? lccn;
  final List<String>? publishPlace;
  final List<String>? oclc;
  final List<String>? contributor;
  final List<String>? lcc;
  final List<String>? ddc;
  final List<String>? isbn;
  final int? lastModifiedI;
  final int? ebookCountI;
  final bool? hasFulltext;
  final bool? publicScanB;
  final List<String>? ia;
  final String? iaCollectionS;
  final String? lendingEditionS;
  final String? lendingIdentifierS;
  final String? printdisabledS;
  final String? coverEditionKey;
  final int? coverI;
  final List<String>? publisher;
  final List<String>? language;
  final List<String>? authorKey;
  final List<String>? authorName;
  final List<String>? authorAlternativeName;
  final List<String>? person;
  final List<String>? place;
  final List<String>? subject;
  final List<String>? time;
  final List<String>? idAlibrisId;
  final List<String>? idAmazon;
  final List<String>? idCanadianNationalLibraryArchive;
  final List<String>? idDepsitoLegal;
  final List<String>? idGoodreads;
  final List<String>? idGoogle;
  final List<String>? idLibrarything;
  final List<String>? idOverdrive;
  final List<String>? idPaperbackSwap;
  final List<String>? idWikidata;
  final List<String>? iaLoadedId;
  final List<String>? iaBoxId;
  final List<String>? publisherFacet;
  final List<String>? personKey;
  final List<String>? placeKey;
  final List<String>? timeFacet;
  final List<String>? personFacet;
  final List<String>? subjectFacet;
  final double? version;
  final List<String>? placeFacet;
  final String? lccSort;
  final List<String>? authorFacet;
  final List<String>? subjectKey;
  final String? ddcSort;
  final List<String>? timeKey;
}
