import 'package:flutter/material.dart';

class PosterImageWidget extends StatelessWidget {
  const PosterImageWidget({
    Key? key,
    required this.id,
    this.size='M'
  }) : super(key: key);

  final int? id;
  final String? size;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      "https://covers.openlibrary.org/b/id/$id-$size.jpg",
      fit: BoxFit.cover,
      frameBuilder: (_, image, loadingBuilder, __) {
        if (loadingBuilder == null) {
          return const Center(child: CircularProgressIndicator());
        }
        return image;
      },
      errorBuilder: (context, e, error) => const Center(child: Icon(Icons.image_outlined)),
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) return child;
        return Center(
          child: CircularProgressIndicator(
            value: loadingProgress.expectedTotalBytes != null ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes! : null,
          ),
        );
      },
    );
  }
}
