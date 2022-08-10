import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:prixs_flutter_test/features/list_books/domain/entities/seach_obj.dart';
import 'package:prixs_flutter_test/features/list_books/presentation/widgets/cancel_button.dart';
import 'package:prixs_flutter_test/features/list_books/presentation/widgets/poster_image.dart';
import 'package:prixs_flutter_test/shared/constants/app_colors.dart';

class BookDetail extends StatelessWidget {
  final Doc? book;

  const BookDetail({
    Key? key,
    required this.book,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTextTheme = Theme.of(context).textTheme;
    final heightSize = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: heightSize * 0.04),
            //* Top Container: Holds Movie/Series information
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://covers.openlibrary.org/b/id/${book?.coverI ?? 9780385533225}-L.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 30.0, sigmaY: 30.0),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.transparent, AppColors.black.withOpacity(0.9)],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            SizedBox(height: heightSize * 0.03),
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 4,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5.0),
                                child: PosterImageWidget(id: book?.coverI ?? 0, size: 'L'),
                              ),
                            ),
                            const SizedBox(height: 20.0),
                            Text(
                              book?.title ?? '',
                              style: const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 10.0),
                            Text(
                              '${book?.firstPublishYear ?? ''}',
                              style: const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 20.0),
                            Container(
                              margin: const EdgeInsets.only(
                                left: 20.0,
                                right: 20.0,
                              ),
                              padding: const EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                color: AppColors.white.withOpacity(0.1),
                              ),
                              child: IntrinsicHeight(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(text: '${book?.ebookCountI ?? ''} ', style: appTextTheme.headline6),
                                          const TextSpan(
                                            text: 'ebook',
                                            style: TextStyle(
                                              fontSize: 10,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const VerticalDivider(width: 1.0, color: AppColors.white),
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(text: '${book?.editionCount ?? ''}', style: appTextTheme.headline6),
                                          const TextSpan(
                                            text: 'Editions',
                                            style: TextStyle(
                                              fontSize: 10,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const VerticalDivider(width: 1.0, color: AppColors.white),
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(text: '${book?.numberOfPagesMedian ?? ''}', style: appTextTheme.headline6),
                                          const TextSpan(
                                            text: 'Pages',
                                            style: TextStyle(
                                              fontSize: 10,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 20.0),
                            const Text(
                              'Synopsis',
                              style: TextStyle(fontWeight: FontWeight.bold),
                              textAlign: TextAlign.start,
                            ),
                            const SizedBox(height: 20.0),
                            const Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
                            SizedBox(height: MediaQuery.of(context).size.height * 0.3),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: CancelButton(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
