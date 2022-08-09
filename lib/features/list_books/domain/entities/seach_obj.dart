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
    required this.key,
    required this.type,
    required this.seed,
    required this.title,
    required this.titleSuggest,
    required this.editionCount,
    required this.editionKey,
    required this.publishDate,
    required this.publishYear,
    required this.firstPublishYear,
    required this.numberOfPagesMedian,
    required this.lccn,
    required this.publishPlace,
    required this.oclc,
    required this.contributor,
    required this.lcc,
    required this.ddc,
    required this.isbn,
    required this.lastModifiedI,
    required this.ebookCountI,
    required this.hasFulltext,
    required this.publicScanB,
    required this.ia,
    required this.iaCollectionS,
    required this.lendingEditionS,
    required this.lendingIdentifierS,
    required this.printdisabledS,
    required this.coverEditionKey,
    required this.coverI,
    required this.publisher,
    required this.language,
    required this.authorKey,
    required this.authorName,
    required this.authorAlternativeName,
    required this.person,
    required this.place,
    required this.subject,
    required this.time,
    required this.idAlibrisId,
    required this.idAmazon,
    required this.idCanadianNationalLibraryArchive,
    required this.idDepsitoLegal,
    required this.idGoodreads,
    required this.idGoogle,
    required this.idLibrarything,
    required this.idOverdrive,
    required this.idPaperbackSwap,
    required this.idWikidata,
    required this.iaLoadedId,
    required this.iaBoxId,
    required this.publisherFacet,
    required this.personKey,
    required this.placeKey,
    required this.timeFacet,
    required this.personFacet,
    required this.subjectFacet,
    required this.version,
    required this.placeFacet,
    required this.lccSort,
    required this.authorFacet,
    required this.subjectKey,
    required this.ddcSort,
    required this.timeKey,
  });

  final String key;
  final String type;
  final List<String> seed;
  final String title;
  final String titleSuggest;
  final int editionCount;
  final List<String> editionKey;
  final List<String> publishDate;
  final List<int> publishYear;
  final int firstPublishYear;
  final int numberOfPagesMedian;
  final List<String> lccn;
  final List<String> publishPlace;
  final List<String> oclc;
  final List<String> contributor;
  final List<String> lcc;
  final List<String> ddc;
  final List<String> isbn;
  final int lastModifiedI;
  final int ebookCountI;
  final bool hasFulltext;
  final bool publicScanB;
  final List<String> ia;
  final String iaCollectionS;
  final String lendingEditionS;
  final String lendingIdentifierS;
  final String printdisabledS;
  final String coverEditionKey;
  final int coverI;
  final List<String> publisher;
  final List<String> language;
  final List<String> authorKey;
  final List<String> authorName;
  final List<String> authorAlternativeName;
  final List<String> person;
  final List<String> place;
  final List<String> subject;
  final List<String> time;
  final List<String> idAlibrisId;
  final List<String> idAmazon;
  final List<String> idCanadianNationalLibraryArchive;
  final List<String> idDepsitoLegal;
  final List<String> idGoodreads;
  final List<String> idGoogle;
  final List<String> idLibrarything;
  final List<String> idOverdrive;
  final List<String> idPaperbackSwap;
  final List<String> idWikidata;
  final List<String> iaLoadedId;
  final List<String> iaBoxId;
  final List<String> publisherFacet;
  final List<String> personKey;
  final List<String> placeKey;
  final List<String> timeFacet;
  final List<String> personFacet;
  final List<String> subjectFacet;
  final double version;
  final List<String> placeFacet;
  final String lccSort;
  final List<String> authorFacet;
  final List<String> subjectKey;
  final String ddcSort;
  final List<String> timeKey;
}
