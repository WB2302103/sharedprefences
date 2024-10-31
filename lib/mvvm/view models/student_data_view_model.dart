import 'package:get/get.dart';
import '../models/Studentdatastructure.dart';
class ManageStudentData extends GetxController{
  final Rx<StudentDataStructure>_studentDatastucture=StudentDataStructure(name: "Ahmad".obs, id: "C223107".obs).obs;

  Rx<StudentDataStructure>get studentDatastucture=>_studentDatastucture;
  updateStudentData({required RxString name,required RxString id })
  {
    _studentDatastucture.value=StudentDataStructure(name: name, id: id);
  }

}
