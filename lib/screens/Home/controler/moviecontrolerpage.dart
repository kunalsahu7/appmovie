import 'package:appmovie/utills/Apipage.dart';
import 'package:get/get.dart';


import '../modal/Modalpage.dart';

class Homecontroler extends GetxController
{

  RxString Name = "Rajdhani 1 ".obs;

  Future<HomeModel>  apicall(String name)
  async {
    ApiHelper apiHelper = ApiHelper();
    HomeModel m1 = await apiHelper.Apicall(name);
    return m1;
  }
}