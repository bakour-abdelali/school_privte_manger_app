import 'package:admindash/data/models/student_modle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/class/state_raqust.dart';
import '../../../core/class/stautus.dart';
import '../../../core/funcion/alert_not_cox.dart';
import '../../../core/funcion/head_data.dart';
import '../../../data/remot/screen/student_data.dart';

class StudentEditeControllr extends GetxController {
  late StudentModle modle;
  late TextEditingController firstnaem;
  late TextEditingController lastname;
  late TextEditingController email;
  late TextEditingController phone;
  late TextEditingController studentLevel;
  late TextEditingController activation;

  final StudentData _data = StudentData(Get.find());
  StateRaqust? stateRaqust;

  late GlobalKey<FormState>
      globalKey; // using this variable for make validation in form plase

  addStudent() async {
    stateRaqust = StateRaqust.Laoding;
    update();
    var respones = await _data.editeStudent(
      id: modle.studentId!,
      student_fname: firstnaem.text,
      student_level: studentLevel.text,
      student_lname: lastname.text,
      student_phone: phone.text,
      student_active: activation.text,
      student_email: email.text,
    );
    stateRaqust = headData(respones);
    if (stateRaqust == StateRaqust.succes) {
      if (respones[AppStatus.status] == AppStatus.sucsess) {
        Get.rawSnackbar(title: "تم", message: "تمت عملية تعديل التلميذ بنجاح");
        // List list = respones['data'];
        // modles.addAll(list.map((e) => StudentModle.fromJson(e)));
        // list.clear();
      } else if (respones[AppStatus.status] == AppStatus.failure) {
        Get.rawSnackbar(title: "فشل", message: "فشل عملية تعديل التلميذ ");

        stateRaqust = StateRaqust.fuler;
      }
    } else {
      noIntrnat();
    }
    update();
  }

  @override
  void dispose() {
    firstnaem.dispose();
    lastname.dispose();
    email.dispose();
    super.dispose();
  }

  @override
  void onInit() {
    modle = Get.arguments['modle'];
    firstnaem = TextEditingController(text: modle.studentFname);
    lastname = TextEditingController(text: modle.studentLname);
    email = TextEditingController(text: modle.studentEmail);
    studentLevel = TextEditingController(text: modle.studentLevel);
    activation = TextEditingController(text: modle.studentActive);
    phone = TextEditingController(text: modle.studentPhone);

    globalKey = GlobalKey<FormState>();
    super.onInit();
  }
}
