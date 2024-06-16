import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:bizfuel/model/businessregistration.dart';
import 'package:bizfuel/model/businesstypemodel.dart';
import 'package:bizfuel/model/userregitrationmodel.dart';
import 'package:bizfuel/utils/string.dart';
import 'package:bizfuel/view/login/login.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class FirebaseHelper with ChangeNotifier {
  final businessname = TextEditingController();
  final keyfeature = TextEditingController();
  final discription = TextEditingController();

  final location = TextEditingController();
  final phonenumber = TextEditingController();

  clear() {
    businessname.clear();
    keyfeature.clear();
    discription.clear();
    location.clear();
    phonenumber.clear();

    notifyListeners();
  }

  // ===================  set====================//

  Future addBusinessReg(
      BusinesRegistrationModel businesRegistration, uid) async {
    final snapshot = db.collection('BusinessRegistration').doc(uid);

    snapshot.set(businesRegistration.toJsone(snapshot.id));
  }

  Future addsellerRegister(USerRegitration uSerRegitration, uid) async {
    final snapshot = db.collection('Usergegitration').doc(uid);

    snapshot.set(uSerRegitration.toJsone(snapshot.id));
  }

  Future addBusinesPost(BusinesPost businesPost) async {
    final snapshot = db.collection('BusinesPost').doc();

    snapshot.set(businesPost.toJsone(snapshot.id));
  }

  File? selectimage;
  String? url;

  Future pickimage() async {
    final pickeimage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickeimage == null) return null;

    selectimage = File(pickeimage.path);
    notifyListeners();

    SettableMetadata metadata = SettableMetadata(contentType: 'image/jpeg');

    UploadTask uploadTask = FirebaseStorage.instance
        .ref()
        .child('BusinessProfile/$time')
        .putFile(selectimage!, metadata);

    TaskSnapshot snapshot = await uploadTask;

    url = await snapshot.ref.getDownloadURL();

    log('this provider image url  $url');
  }

  List<File> listImage = [];
  List<String> listUrl = [];
  Future<void> pickListImage() async {
    final pickedImages = await ImagePicker().pickMultiImage();
    if (pickedImages == null || pickedImages.isEmpty) return;

    // listImage.clear();
    // listUrl.clear();

    for (var pickedImage in pickedImages) {
      File imageFile = File(pickedImage.path);
      listImage.add(imageFile);

      SettableMetadata metadata = SettableMetadata(contentType: 'image/jpeg');

      String time = DateTime.now().millisecondsSinceEpoch.toString();
      UploadTask uploadTask = FirebaseStorage.instance
          .ref()
          .child('Postimage/$time')
          .putFile(imageFile, metadata);

      TaskSnapshot snapshot = await uploadTask;
      String url = await snapshot.ref.getDownloadURL();
      listUrl.add(url);
    }

    log('Uploaded image URLs: $listUrl');
    notifyListeners();
  }
  // ===================  get====================//

  BusinesRegistrationModel? businesRegistrationModel;
  Future getBusinesprofile(uid) async {
    final snapshot = await db.collection('BusinesPost').doc(uid).get();

    if (snapshot.exists) {
      businesRegistrationModel = BusinesRegistrationModel.fromjsone(
          snapshot.data() as Map<String, dynamic>);
    }
  }

  Stream<QuerySnapshot> getAllCompany() {
    return db.collection('BusinesPost').snapshots();
  }

  Stream<QuerySnapshot> getAllBusines() {
    return db.collection('BusinessRegistration').snapshots();
  }

  // ===================  update====================//

  // ===================  delete====================//

  Future logout(BuildContext context) async {
    try {
      auth.signOut().then((value) {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => Login(),
            ),
            (route) => false);
      });
    } catch (e) {
      throw e.toString();
    }
  }
}
