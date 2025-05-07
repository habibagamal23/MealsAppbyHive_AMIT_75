import 'package:get_it/get_it.dart';
import 'package:mealsbyhive/db/hiveHelper.dart';

final getit = GetIt.instance;

void setUp(){
  getit.registerSingleton<HiveHelper>(HiveHelper());

}
