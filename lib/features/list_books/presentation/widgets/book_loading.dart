import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../shared/constants/app_colors.dart';

class BookLoading extends StatelessWidget {
  const BookLoading({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColors.gray.withOpacity(0.2),
      highlightColor: AppColors.white.withOpacity(0.5),
      child: Container(
        margin: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: AppColors.gray,
        ),
        height: MediaQuery.of(context).size.height / 5,
      ),
    );
  }
}
