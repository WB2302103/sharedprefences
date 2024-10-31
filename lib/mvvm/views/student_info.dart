import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled10/mvvm/view%20models/student_data_view_model.dart';
class StudentInfo extends StatelessWidget {
  const StudentInfo({super.key});

  @override
  Widget build(BuildContext context) {
    var size=Get.size;
    Rx<ManageStudentData> manageStudentdata=ManageStudentData().obs;
    return Obx(()=>Scaffold(
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Name:${manageStudentdata.value.studentDatastucture.value.name.value}\n ID:${manageStudentdata.value.studentDatastucture.value.id.value}"),
            const SizedBox(height: 11,),
            ElevatedButton(onPressed:(){
              manageStudentdata.value.updateStudentData(name: "Adil Rashid".obs, id: "C223098".obs);
            },child: const Text("Update data"),)],
        ),
      ),
    ));
  }
}