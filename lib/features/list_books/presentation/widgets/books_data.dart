import 'package:flutter/material.dart';
import 'package:prixs_flutter_test/features/list_books/domain/entities/book_by_subject.dart';
import 'package:prixs_flutter_test/features/list_books/presentation/widgets/poster_image.dart';
import 'package:prixs_flutter_test/shared/constants/app_colors.dart';

class BooksData extends StatelessWidget {
  final List<BookBySubject> booksBySubject;
  final String title;
  const BooksData({
    Key? key,
    required this.booksBySubject,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            title,
            style: const TextStyle(
              color: AppColors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
        ),
        const SizedBox(height: 10.0),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10.0),
          height: MediaQuery.of(context).size.height / 3.5,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: booksBySubject.length,
            itemBuilder: (context, i) {
              final currentBook = booksBySubject[i];
              return GestureDetector(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.all(5.0),
                  width: MediaQuery.of(context).size.width / 3.5,
                  // decoration: BoxDecoration(
                  //   color: AppColors.white,
                  // ),
                  child: Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height / 5.0,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5.0),
                          child: PosterImageWidget(id: currentBook.coverId),
                        ),
                      ),
                      Text(currentBook.title ?? ''),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
