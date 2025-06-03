import 'package:ecom/common/widgets/images/t_rounded_image.dart';
import 'package:ecom/common/widgets/texts/product_title_text.dart';
import 'package:ecom/utils/constants/colors.dart';
import 'package:ecom/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../styles/shadows.dart';
import '../../custom_shapes/containers/rounded_container.dart';
import '../../icons/t_circular_icon.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Container(
      width: 180,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [TShadowStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(TSizes.productImageRadius),
        color: dark ? TColors.darkerGrey : TColors.white,
      ),
      child: Column(
        children: [
/////==========================Image, wishlist, discount tag
          TRoundedContainer(
            height: 180,
            padding: const EdgeInsets.all(TSizes.sm),
            backgroundColor: dark ? TColors.dark : TColors.light,
            child: Stack(
              children: [
                const TRoundedImage(
                  imageUrl: 'assets/icons/categories/clothes.png',
                  applyImageRadius: true,
                ),
                Positioned(
                  top: 10,
                  child: TRoundedContainer(
                    radius: TSizes.sm,
                    backgroundColor: TColors.secondary.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(
                        horizontal: TSizes.sm, vertical: TSizes.xs),
                    child: Text(
                      '25%',
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .apply(color: TColors.black),
                    ),
                  ),
                ),
                const Positioned(
                    top: 0,
                    right: 0,
                    child: TCircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    )),
              ],
            ),
          ),

          const SizedBox(height: TSizes.spaceBtwItems / 2),
          Padding(
            padding: EdgeInsets.only(left: TSizes.sm),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TProductTitleText(
                  title: 'Drop Shoulder Mens New Shirt',
                  smallSize: true,
                ),
                SizedBox(height: TSizes.spaceBtwItems / 2),
                Row(
                  children: [
                    Text(
                      'Nike',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    const SizedBox(
                      width: TSizes.xs,
                    ),
                    const Icon(
                      Iconsax.verify5,
                      color: Colors.blue,
                      size: TSizes.iconXs,
                    )
                  ],
                ),
                Spacer(),
                Row(
                  children: [
                    Text('\৳ 45',maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.headlineMedium,)
                  ],
                )
                
                
              ],
            ),
          ),

/////=============================Product Details
        ],
      ),
    );
  }
}
