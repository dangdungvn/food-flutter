import 'package:flutter/material.dart';
import 'package:foodapp/pages/home/food_page_body.dart';
import 'package:foodapp/utils/colors.dart';
import 'package:foodapp/utils/dimensions.dart';
import 'package:foodapp/widgets/big_text.dart';
import 'package:foodapp/widgets/small_text.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          child: Container(
            margin: EdgeInsets.only(
                top: Dimensions.height45, bottom: Dimensions.height15),
            padding: EdgeInsets.only(
                left: Dimensions.width20, right: Dimensions.width20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    BigText(text: "Bangladesh", color: AppColors.mainColor),
                    Row(
                      children: [
                        SmallText(text: "Narsingdi", color: Colors.black54),
                        const Icon(Icons.arrow_drop_down_rounded),
                      ],
                    ),
                  ],
                ),
                Center(
                  child: Container(
                    width: Dimensions.height45,
                    height: Dimensions.height45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: AppColors.mainColor,
                    ),
                    child: Icon(
                      Icons.search_rounded,
                      color: Colors.white,
                      size: Dimensions.iconSize24,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const Expanded(
            child: SingleChildScrollView(
          child: FoodPageBody(),
        ))
      ],
    ));
  }
}
