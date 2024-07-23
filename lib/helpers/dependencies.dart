import 'package:foodapp/controllers/popular_product_controller.dart';
import 'package:foodapp/data/api/api_client.dart';
import 'package:foodapp/data/repository/popular_product_repo.dart';
import 'package:foodapp/utils/app_constants.dart';
import 'package:get/get.dart';

Future<void> init() async {
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}
