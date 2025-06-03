import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecom/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:ecom/features/screens/home/widgets/home_categories.dart';
import 'package:ecom/features/screens/home/widgets/promo_slider.dart';
import 'package:ecom/utils/device/device_utility.dart';
import 'package:ecom/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/image_text_category_widget.dart';
import '../../../../common/widgets/images/t_rounded_image.dart';
import '../../../../common/widgets/searchbar_widget.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/images_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../common/widgets/product/product_cards/product_card_vertical.dart';
import 'widgets/home_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
//==================================Header====================

            PrimaryHeaderContainer(
              child: Column(
                children: [
//==================================Appbar====================

                  THomeAppBar(),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
//==================================Searchbar==================

                  TSearchContainer(
                    text: 'Search in store...',
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

//==================================Categories=================
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        TSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: TColors.white,
                        ),
                        SizedBox(
                          height: TSizes.spaceBtwItems,
                        ),
                        THomeCategories(),
                      ],
                    ),
                  )
                ],
              ),
            ),
//==================================Body=================
            Padding(
                padding: EdgeInsets.all(TSizes.defaultSpace),
                child: Column(
                  children: [
                    TPromoSlider(
                      banners: [
                        TImages.promoBanner1,
                        TImages.promoBanner2,
                        TImages.promoBanner3,
                        TImages.promoBanner4,
                      ],
                    ),
                    TProductCardVertical (),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
