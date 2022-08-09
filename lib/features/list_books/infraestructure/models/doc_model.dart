import 'dart:convert';

class DocModel {
    DocModel({
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

    factory DocModel.fromRawJson(String str) => DocModel.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory DocModel.fromJson(Map<String, dynamic> json) => DocModel(
        key: json["key"],
        type: json["type"],
        seed: List<String>.from(json["seed"].map((x) => x)),
        title: json["title"],
        titleSuggest: json["title_suggest"],
        editionCount: json["edition_count"],
        editionKey: List<String>.from(json["edition_key"].map((x) => x)),
        publishDate: List<String>.from(json["publish_date"].map((x) => x)),
        publishYear: List<int>.from(json["publish_year"].map((x) => x)),
        firstPublishYear: json["first_publish_year"],
        numberOfPagesMedian: json["number_of_pages_median"],
        lccn: List<String>.from(json["lccn"].map((x) => x)),
        publishPlace: List<String>.from(json["publish_place"].map((x) => x)),
        oclc: List<String>.from(json["oclc"].map((x) => x)),
        contributor: List<String>.from(json["contributor"].map((x) => x)),
        lcc: List<String>.from(json["lcc"].map((x) => x)),
        ddc: List<String>.from(json["ddc"].map((x) => x)),
        isbn: List<String>.from(json["isbn"].map((x) => x)),
        lastModifiedI: json["last_modified_i"],
        ebookCountI: json["ebook_count_i"],
        hasFulltext: json["has_fulltext"],
        publicScanB: json["public_scan_b"],
        ia: List<String>.from(json["ia"].map((x) => x)),
        iaCollectionS: json["ia_collection_s"],
        lendingEditionS: json["lending_edition_s"],
        lendingIdentifierS: json["lending_identifier_s"],
        printdisabledS: json["printdisabled_s"],
        coverEditionKey: json["cover_edition_key"],
        coverI: json["cover_i"],
        publisher: List<String>.from(json["publisher"].map((x) => x)),
        language: List<String>.from(json["language"].map((x) => x)),
        authorKey: List<String>.from(json["author_key"].map((x) => x)),
        authorName: List<String>.from(json["author_name"].map((x) => x)),
        authorAlternativeName: List<String>.from(json["author_alternative_name"].map((x) => x)),
        person: List<String>.from(json["person"].map((x) => x)),
        place: List<String>.from(json["place"].map((x) => x)),
        subject: List<String>.from(json["subject"].map((x) => x)),
        time: List<String>.from(json["time"].map((x) => x)),
        idAlibrisId: List<String>.from(json["id_alibris_id"].map((x) => x)),
        idAmazon: List<String>.from(json["id_amazon"].map((x) => x)),
        idCanadianNationalLibraryArchive: List<String>.from(json["id_canadian_national_library_archive"].map((x) => x)),
        idDepsitoLegal: List<String>.from(json["id_depósito_legal"].map((x) => x)),
        idGoodreads: List<String>.from(json["id_goodreads"].map((x) => x)),
        idGoogle: List<String>.from(json["id_google"].map((x) => x)),
        idLibrarything: List<String>.from(json["id_librarything"].map((x) => x)),
        idOverdrive: List<String>.from(json["id_overdrive"].map((x) => x)),
        idPaperbackSwap: List<String>.from(json["id_paperback_swap"].map((x) => x)),
        idWikidata: List<String>.from(json["id_wikidata"].map((x) => x)),
        iaLoadedId: List<String>.from(json["ia_loaded_id"].map((x) => x)),
        iaBoxId: List<String>.from(json["ia_box_id"].map((x) => x)),
        publisherFacet: List<String>.from(json["publisher_facet"].map((x) => x)),
        personKey: List<String>.from(json["person_key"].map((x) => x)),
        placeKey: List<String>.from(json["place_key"].map((x) => x)),
        timeFacet: List<String>.from(json["time_facet"].map((x) => x)),
        personFacet: List<String>.from(json["person_facet"].map((x) => x)),
        subjectFacet: List<String>.from(json["subject_facet"].map((x) => x)),
        version: json["_version_"].toDouble(),
        placeFacet: List<String>.from(json["place_facet"].map((x) => x)),
        lccSort: json["lcc_sort"],
        authorFacet: List<String>.from(json["author_facet"].map((x) => x)),
        subjectKey: List<String>.from(json["subject_key"].map((x) => x)),
        ddcSort: json["ddc_sort"],
        timeKey: List<String>.from(json["time_key"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "key": key,
        "type": type,
        "seed": List<dynamic>.from(seed.map((x) => x)),
        "title": title,
        "title_suggest": titleSuggest,
        "edition_count": editionCount,
        "edition_key": List<dynamic>.from(editionKey.map((x) => x)),
        "publish_date": List<dynamic>.from(publishDate.map((x) => x)),
        "publish_year": List<dynamic>.from(publishYear.map((x) => x)),
        "first_publish_year": firstPublishYear,
        "number_of_pages_median": numberOfPagesMedian,
        "lccn": List<dynamic>.from(lccn.map((x) => x)),
        "publish_place": List<dynamic>.from(publishPlace.map((x) => x)),
        "oclc": List<dynamic>.from(oclc.map((x) => x)),
        "contributor": List<dynamic>.from(contributor.map((x) => x)),
        "lcc": List<dynamic>.from(lcc.map((x) => x)),
        "ddc": List<dynamic>.from(ddc.map((x) => x)),
        "isbn": List<dynamic>.from(isbn.map((x) => x)),
        "last_modified_i": lastModifiedI,
        "ebook_count_i": ebookCountI,
        "has_fulltext": hasFulltext,
        "public_scan_b": publicScanB,
        "ia": List<dynamic>.from(ia.map((x) => x)),
        "ia_collection_s": iaCollectionS,
        "lending_edition_s": lendingEditionS,
        "lending_identifier_s": lendingIdentifierS,
        "printdisabled_s": printdisabledS,
        "cover_edition_key": coverEditionKey,
        "cover_i": coverI,
        "publisher": List<dynamic>.from(publisher.map((x) => x)),
        "language": List<dynamic>.from(language.map((x) => x)),
        "author_key": List<dynamic>.from(authorKey.map((x) => x)),
        "author_name": List<dynamic>.from(authorName.map((x) => x)),
        "author_alternative_name": List<dynamic>.from(authorAlternativeName.map((x) => x)),
        "person": List<dynamic>.from(person.map((x) => x)),
        "place": List<dynamic>.from(place.map((x) => x)),
        "subject": List<dynamic>.from(subject.map((x) => x)),
        "time": List<dynamic>.from(time.map((x) => x)),
        "id_alibris_id": List<dynamic>.from(idAlibrisId.map((x) => x)),
        "id_amazon": List<dynamic>.from(idAmazon.map((x) => x)),
        "id_canadian_national_library_archive": List<dynamic>.from(idCanadianNationalLibraryArchive.map((x) => x)),
        "id_depósito_legal": List<dynamic>.from(idDepsitoLegal.map((x) => x)),
        "id_goodreads": List<dynamic>.from(idGoodreads.map((x) => x)),
        "id_google": List<dynamic>.from(idGoogle.map((x) => x)),
        "id_librarything": List<dynamic>.from(idLibrarything.map((x) => x)),
        "id_overdrive": List<dynamic>.from(idOverdrive.map((x) => x)),
        "id_paperback_swap": List<dynamic>.from(idPaperbackSwap.map((x) => x)),
        "id_wikidata": List<dynamic>.from(idWikidata.map((x) => x)),
        "ia_loaded_id": List<dynamic>.from(iaLoadedId.map((x) => x)),
        "ia_box_id": List<dynamic>.from(iaBoxId.map((x) => x)),
        "publisher_facet": List<dynamic>.from(publisherFacet.map((x) => x)),
        "person_key": List<dynamic>.from(personKey.map((x) => x)),
        "place_key": List<dynamic>.from(placeKey.map((x) => x)),
        "time_facet": List<dynamic>.from(timeFacet.map((x) => x)),
        "person_facet": List<dynamic>.from(personFacet.map((x) => x)),
        "subject_facet": List<dynamic>.from(subjectFacet.map((x) => x)),
        "_version_": version,
        "place_facet": List<dynamic>.from(placeFacet.map((x) => x)),
        "lcc_sort": lccSort,
        "author_facet": List<dynamic>.from(authorFacet.map((x) => x)),
        "subject_key": List<dynamic>.from(subjectKey.map((x) => x)),
        "ddc_sort": ddcSort,
        "time_key": List<dynamic>.from(timeKey.map((x) => x)),
    };
}
