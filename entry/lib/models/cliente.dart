import 'package:entry/models/user.dart';

class Cliente extends User {
  final String nombre;
  final int cedula;
  final DateTime dob;
  Cliente(String email, this.nombre, this.cedula, this.dob) : super(email);
}
