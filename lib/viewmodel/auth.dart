import 'package:bizfuel/model/businessregistration.dart';
import 'package:bizfuel/model/userregitrationmodel.dart';
import 'package:bizfuel/utils/string.dart';
import 'package:bizfuel/view/Businesses/buzbottomsheet.dart';
import 'package:bizfuel/view/Resellers/resellerbottomNavi.dart';
import 'package:bizfuel/view/login/login.dart';
import 'package:bizfuel/viewmodel/firebasehelper.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AuthControoler with ChangeNotifier {
  Future businessRegistration(
      email, password, context, businesname, img, phonenumber) async {
    final authprvdr = Provider.of<FirebaseHelper>(context, listen: false);

    try {
      await auth
          .createUserWithEmailAndPassword(
        email: email,
        password: password,
      )
          .then(
        (value) {
          authprvdr.addBusinessReg(
            BusinesRegistrationModel(
              businessName: businesname,
              image: img,
              password: password,
              phonenumber: phonenumber,
              uid: value.user!.uid,
              email: email,
              type: 'BUSINESS',
            ),
            value.user!.uid,
          );
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => Login(),
            ),
            (route) => false,
          );
        },
      );
    } on FirebaseException catch (e) {
      throw e.toString();
    }
  }

  Future signin(email, password, BuildContext context) async {
    try {
      UserCredential credential = await auth.signInWithEmailAndPassword(
          email: email, password: password);

      User? user = credential.user;

      if (user != null) {
        String uid = credential.user!.uid;
        final userdoc =
            await db.collection('BusinessRegistration').doc(uid).get();

        if (userdoc.exists) {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => BizbottomNavi()));
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ResellerbottomNavi(),
            ),
          );
        }
      }
    } catch (e) {
      throw e.toString();
    }
  }

  // Future signinUser(email, password, BuildContext context) async {
  //   try {
  //     UserCredential credential = await auth.signInWithEmailAndPassword(
  //         email: email, password: password);

  //     User? user = credential.user;

  //     if (user != null) {
  //       String uid = credential.user!.uid;
  //       final userdoc = await db.collection('userregitreation').doc(uid).get();

  //       if (userdoc.exists) {
  //         Navigator.of(context)
  //             .push(MaterialPageRoute(builder: (context) => BizbottomNavi()));
  //       } else {
  //         Navigator.push(
  //           context,
  //           MaterialPageRoute(
  //             builder: (context) => Check(),
  //           ),
  //         );
  //       }
  //     }
  //   } catch (e) {
  //     throw e.toString();
  //   }
  // }

  Future userRegitration(
    email,
    password,
    context,
    img,
    phonenumber,
    name,
    qaualification,
  ) async {
    final authprvdr = Provider.of<FirebaseHelper>(context, listen: false);

    try {
      await auth
          .createUserWithEmailAndPassword(
        email: email,
        password: password,
      )
          .then(
        (value) {
          authprvdr.addsellerRegister(
              USerRegitration(
                email: email,
                name: name,
                image: img,
                qualification: qaualification,
                type: 'SELLER',
                uid: value.user!.uid,
              ),
              value.user!.uid);

          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => Login(),
            ),
            (route) => false,
          );
        },
      );
    } on FirebaseException catch (e) {
      throw e.toString();
    }
  }
}

class Check extends StatelessWidget {
  const Check({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('the loggin'),
        ],
      ),
    );
  }
}
