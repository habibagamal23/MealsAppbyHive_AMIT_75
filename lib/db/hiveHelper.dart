import 'package:hive_flutter/hive_flutter.dart';
import 'package:mealsbyhive/models/mealsModel.dart';
import 'package:path_provider/path_provider.dart';

class HiveHelper {

  static const String boxname = 'meals';
   late Box<MealsModel> box;

   Future<void> startDb() async {
    final path = await getApplicationDocumentsDirectory();
    await Hive.initFlutter(path.path);
    Hive.registerAdapter(MealsModelAdapter());
    box = await Hive.openBox<MealsModel>(boxname);
  }

   int get length => box.length;

   Future<void> addMeal(MealsModel meal) async {
    await box.add(meal);
  }

   Future<List<MealsModel>> getAllmeals() async {
    return box.values.toList();
  }
}
