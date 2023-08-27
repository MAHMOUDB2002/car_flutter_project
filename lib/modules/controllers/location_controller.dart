import 'package:car_project/modules/views/Authentication/location%20_screen.dart';
import 'package:countries_utils/countries_utils.dart';
import 'package:get/get.dart';



class LocationController extends GetxController {
  List<Country> countries = Countries.all();
  List<String> countriesName = ['w'];

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    countriesList();
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  List<CountryLists> item = [];
  void countriesList() {
    countriesName = [];

    countries.forEach((element) {
      countriesName.add(element.name ?? "");
      update();
    });
    item = countriesName.map((e) => CountryLists(title: e, tag: e[0])).toList();
    print(countriesName.length);
    update();
  }
}
