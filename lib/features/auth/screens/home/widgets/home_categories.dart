import 'package:flutter/material.dart';

import '../../../../../common/widgets/image_text_category_widget.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return TVerticalImageText(
            image: 'assets/icons/categories/furniture.png',
            title: 'Furniture',
            onTap: () {},
          );
        },
      ),
    );
  }
}
