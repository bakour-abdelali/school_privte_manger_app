import 'package:admindash/controller/Home/teacher/AddTecherController.dart';
import 'package:admindash/core/class/state_raqust.dart';
import 'package:admindash/core/const/app_colors.dart';
import 'package:admindash/view/widget/ustomINputefielde.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddteacherScreen extends StatelessWidget {
  const AddteacherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AddTeacherController controller = Get.put(AddTeacherController());

    return Scaffold(
      appBar: AppBar(
        title: Text('26'.tr),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 50, horizontal: 10),
        padding: const EdgeInsets.all(8),

        // width: MediaQuery.of(context).size.width * 0.7,
        // height: double.maxFinite,
        decoration: BoxDecoration(
          border: Border.all(width: 3),
        ),
        child: Form(
          key: controller.globalKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      // دير validation  لكل حقل
                      child: CustomInputeField(
                          enable: true,
                          obscureText: false,
                          title: 'first name',
                          hintext: 'entre your firstname',
                          controller: controller.firstnaem),
                    ),
                  ),
                  const SizedBox(width: 20), // Spacing between fields
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: CustomInputeField(
                          enable: true,
                          obscureText: false,
                          title: 'last name',
                          hintext: 'entre your lasname',
                          controller: controller.lastname),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: CustomInputeField(
                  enable: true,
                  obscureText: false,
                  title: 'email',
                  hintext: 'Teacher Email',
                  controller: controller.email,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: CustomInputeField(
                  enable: true,
                  obscureText: false,
                  title: 'Phone',
                  hintext: 'Teacher Phone',
                  controller: controller.phone,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: CustomInputeField(
                  enable: true,
                  obscureText: true,
                  title: 'pasword',
                  hintext: 'entre the paswword',
                  controller: controller.pasword,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: CustomInputeField(
                  enable: true,
                  obscureText: false,
                  title: 'module',
                  hintext: 'entre  module',
                  controller: controller.module,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: CustomInputeField(
                  enable: true,
                  obscureText: false,
                  title: 'salary',
                  hintext: 'entre  salary',
                  controller: controller.salary,
                ),
              ),
              const Spacer(),
              Container(
                height: 50,
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: Appcolors.seconderyColor,
                    ),
                    color: Appcolors.seconderyColor),
                child: GetBuilder<AddTeacherController>(builder: (c) {
                  return InkWell(
                    onTap: () {
                      c.addTeaccher();
                    },
                    child: Center(
                      child: c.stateRaqust != StateRaqust.Laoding
                          ? Text(
                              "37".tr,
                              style: const TextStyle(
                                fontSize: 20,
                                color: Appcolors.whithe,
                              ),
                            )
                          : const CircularProgressIndicator(
                              color: Appcolors.whithe,
                            ),
                    ),
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
