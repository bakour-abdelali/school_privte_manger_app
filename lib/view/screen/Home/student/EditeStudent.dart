import 'package:admindash/controller/Home/Student/EditStudentInfocontroller.dart';
import 'package:admindash/view/widget/ustomINputefielde.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditeStudentinfo extends StatelessWidget {
  const EditeStudentinfo({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    StudentEditeControllr c = Get.put(StudentEditeControllr());
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.3,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: CustomInputeField(
                      enable: true,
                      title: '21'.tr,
                      obscureText: false,
                      hintext: '',
                      controller: c.firstnaem,
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: CustomInputeField(
                      enable: true,
                      obscureText: false,
                      title: '22'.tr,
                      hintext: '',
                      controller: c.lastname,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: CustomInputeField(
                enable: true,
                obscureText: false,
                title: '3'.tr,
                hintext: 'Teacher Email',
                controller: c.email,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: CustomInputeField(
                enable: true,
                obscureText: false,
                title: '38'.tr,
                hintext: 'Teacher Phone',
                controller: c.phone,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: CustomInputeField(
                enable: true,
                obscureText: false,
                title: '23'.tr,
                hintext: '',
                controller: c.studentLevel,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: CustomInputeField(
                obscureText: false,
                enable: true,
                title: '45'.tr,
                hintext: '45'.tr,
                controller: c.activation,
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('40'.tr),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: Text('42'.tr),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
