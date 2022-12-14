import 'package:flutter/material.dart';
import '../../../../shared/constants/app_colors.dart';

class CancelButton extends StatelessWidget {
  const CancelButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => Navigator.pop(context),
      icon: Container(
        height: 32.0,
        width: 32.0,
        decoration: BoxDecoration(
          color: AppColors.white.withOpacity(0.3),
          borderRadius: BorderRadius.circular(100.0),
        ),
        child: const Icon(
          Icons.arrow_back,
          color: AppColors.white,
          size: 20.0,
        ),
      ),
      color: AppColors.white.withOpacity(0.7),
    );
  }
}
