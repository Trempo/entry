import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:entry/models/cliente.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:intl/intl.dart';

Future<bool> signIn(String email, String password) async {
  try {
    await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);
    return true;
  } catch (e) {
    //TODO: Implementar toasts con error handling
    print(e);
    return false;
  }
}

Future<bool> register(String email, String password, String nombre, int cedula,
    String dob) async {
  var cliente = {
    "email": email,
    "nombre": nombre,
    "cedula": cedula,
    "dob": dob
  };
  try {
    await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);
    try {
      String uid = FirebaseAuth.instance.currentUser.uid;
      DocumentReference documentReference =
          FirebaseFirestore.instance.collection('users').doc(uid);
      FirebaseFirestore.instance.runTransaction((transaction) async {
        transaction.set(documentReference, cliente);
      });
    } catch (e) {
      print(e);
    }
    return true;
  } on FirebaseAuthException catch (e) {
    //TODO: Implementar error handling y clientside verification
    if (e.code == 'weak-password') {
      print('The password provided is too weak');
    } else if (e.code == 'email-already-in-use') {
      print('The account already exists for that email');
    }
    return false;
  } catch (e) {
    print(e.toString());
  }
  return false;
}

bool isLoggedIn() {
  var currentUser = FirebaseAuth.instance.currentUser;

  if (currentUser != null) {
    return true;
  }
  return false;
}
