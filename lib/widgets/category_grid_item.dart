import 'package:flutter/material.dart';
import 'package:meal_ai/models/category.dart';
import 'package:transparent_image/transparent_image.dart';

class CategoryGridItem extends StatelessWidget {
  const CategoryGridItem(
      {super.key, required this.category, required this.selectedCategory});

  final Category category;
  final void Function() selectedCategory;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: selectedCategory,
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Stack(
          children: [
            FadeInImage(
              placeholder: MemoryImage(kTransparentImage),
              image: NetworkImage(category.flagUrl),
              fit: BoxFit.cover,
              height: 200,
              width: double.infinity,
            ),
            Positioned(
                right: 0,
                left: 0,
                bottom: 0,
                child: Container(
                  color: Colors.black54,
                  padding:
                      const EdgeInsets.symmetric(vertical: 6, horizontal: 4),
                  child: Column(
                    children: [
                      Text(
                        category.title,
                        maxLines: 2,
                        textAlign: TextAlign.center,
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      const Row(
                        children: [],
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
