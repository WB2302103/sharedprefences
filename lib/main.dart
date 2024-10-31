import 'package:flutter/material.dart';
import 'package:untitled10/mvvm/views/student_info.dart';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
void main()
{
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context)
  {

    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: const StudentInfo()
    );
  }
}
