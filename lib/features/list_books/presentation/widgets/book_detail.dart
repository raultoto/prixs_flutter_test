import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:prixs_flutter_test/features/list_books/domain/entities/seach_obj.dart';
import 'package:prixs_flutter_test/features/list_books/presentation/widgets/cancel_button.dart';
import 'package:prixs_flutter_test/shared/constants/app_colors.dart';

class MovieInfo extends StatelessWidget {
  final Doc book;

  const MovieInfo({
    Key ?key,
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
                      image:
                          NetworkImage("https://covers.openlibrary.org/b/isbn/9780385533225-L.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 30.0, sigmaY: 30.0),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.transparent,
                            AppColors.black.withOpacity(0.9)
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      )
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
