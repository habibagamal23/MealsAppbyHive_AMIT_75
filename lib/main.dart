import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:mealsbyhive/db/hiveHelper.dart';
import 'package:mealsbyhive/screens/HomeScreen.dart';
import 'package:mealsbyhive/service/getit_helper.dart';
import 'package:path_provider/path_provider.dart';



void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  setUp();
  await getit<HiveHelper>().startDb();
  //1- object
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomeScreen()
    );
  }
}
