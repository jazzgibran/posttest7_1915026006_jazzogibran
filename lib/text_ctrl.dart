import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'registrasi.dart';

FirebaseFirestore firestore = FirebaseFirestore.instance;
CollectionReference users = firestore.collection("users");

class TextController extends GetxController {
  var cpass = ''.obs;
  var pass = ''.obs;
  var uname = ''.obs;

  final TextEditingController unamectrl = TextEditingController();
  final TextEditingController cpassctrl = TextEditingController();
  final TextEditingController passctrl = TextEditingController();

  onPressed() {
    uname(unamectrl.text);
    pass(passctrl.text);
    cpass(cpassctrl.text);

    users.add({
      'uname': unamectrl.text,
      'pass': passctrl.text,
    });

    Get.to(RegBerhasil());
  }

  @override
  void onClose() {
    // TODO: implement onClose
    unamectrl.dispose();
    passctrl.dispose();
    cpassctrl.dispose();
    super.onClose();
  }
}
