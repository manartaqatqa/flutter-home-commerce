import 'package:flutter/material.dart';
import 'package:home_commerce/controllers/db/offline/shared_helper.dart';
import 'package:home_commerce/controllers/db/online/dio_helper.dart';
import 'package:home_commerce/root/app_root.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await SharedHelper.init();
  DioHelper.init();
  runApp(
   AppRoot()
  );
}

