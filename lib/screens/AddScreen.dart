import 'package:flutter/material.dart';
import 'package:mealsbyhive/db/hiveHelper.dart';
import 'package:mealsbyhive/models/mealsModel.dart';

class Addscreen extends StatelessWidget {
  const Addscreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController mealNameController = TextEditingController();
    TextEditingController price = TextEditingController();
    TextEditingController dis = TextEditingController();
    return Scaffold(
      body: Column(
        children: [
          Text("Add Screen"),
          TextField(
            controller: mealNameController,
            decoration: InputDecoration(
              labelText: "Meal Name",
            ),
          ),
          TextField(
              controller: price,
              decoration: InputDecoration(
                labelText: "Meal price",
              )),
          TextField(
            controller: dis,
            decoration: InputDecoration(
              labelText: "Meal dis",
            ),
          ),
          ElevatedButton(
              onPressed: () async {
                MealsModel meal = MealsModel(HiveHelper.length + 1,
                    mealNameController.text, "image", price.text, dis.text);
                await HiveHelper.addMeal(meal);
                print("meal added");
                Navigator.pop(context);
              },
              child: Text("save"))
        ],
      ),
    );
  }
}
