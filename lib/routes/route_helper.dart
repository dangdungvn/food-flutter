import 'package:foodapp/pages/food/popular_food_detail.dart';
import 'package:foodapp/pages/food/recommended_food_detail.dart';
import 'package:foodapp/pages/home/main_food_page.dart';
import 'package:get/get.dart';

class RouteHelper {
  static const String initial = '/';
  static String getInitial() => initial;
  static const String popularFood = "/popular-food";
  static String getPopularFood(int pageId) => 'popular-food?pageId=$pageId';
  static String recommendedFood = "/recommended-food";
  static String getRecommendedFood() => recommendedFood;
  static List<GetPage> routes = [
    GetPage(
      name: initial,
      page: () {
        return const MainFoodPage();
      },
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 300),
    ),
    GetPage(
      name: popularFood,
      page: () {
        var pageId = Get.parameters['pageId'];
        return PopularFoodDetail(pageId: int.parse(pageId!));
      },
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 300),
    ),
    GetPage(
      name: recommendedFood,
      page: () {
        return const RecommendedFoodDetail();
      },
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 300),
    ),
  ];
}
