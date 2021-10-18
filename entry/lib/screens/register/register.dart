import 'package:entry/app.dart';
import 'package:entry/net/flutterfire.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../styles.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var visibilityPW = false;
  var visibilityConfirmPW = false;
  final TextEditingController _emailField = TextEditingController();
  final TextEditingController _nameField = TextEditingController();
  final TextEditingController _passwordField = TextEditingController();
  final TextEditingController _confirmPasswordField = TextEditingController();
  final TextEditingController _cedulaField = TextEditingController();
  final TextEditingController _dobField = TextEditingController();

  Future _selectDate() async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2025),
    );

    if (picked != null) {
      setState(() {
        _dobField.text = DateFormat('dd/MM/yyyy').format(picked);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: darkPurple,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 40),
              width: MediaQuery.of(context).size.width / 1.38,
              child: Text('Entry', style: tituloEntryLoginRegister),
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.38,
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: Text(
                'Registrate',
                style: rubik18magnolia,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.38,
              height: MediaQuery.of(context).size.height / 14,
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
              decoration: BoxDecoration(
                color: magnolia,
                borderRadius: BorderRadius.circular(15),
                boxShadow: shadowInputFields,
              ),
              child: TextFormField(
                style: rubik18darkPurple,
                controller: _emailField,
                cursorColor: amaranth,
                decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: amaranth, width: 3)),
                    labelText: 'Correo',
                    labelStyle: rubik18darkPurple,
                    suffixIcon: Icon(
                      Icons.email_outlined,
                      color: darkPurple,
                    )),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.38,
              height: MediaQuery.of(context).size.height / 14,
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
              decoration: BoxDecoration(
                color: magnolia,
                borderRadius: BorderRadius.circular(15),
                boxShadow: shadowInputFields,
              ),
              child: TextFormField(
                style: rubik18darkPurple,
                controller: _nameField,
                cursorColor: amaranth,
                decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: amaranth, width: 3)),
                    labelText: 'Nombre completo',
                    labelStyle: rubik18darkPurple,
                    suffixIcon: Icon(
                      Icons.account_box_outlined,
                      color: darkPurple,
                    )),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.38,
              height: MediaQuery.of(context).size.height / 14,
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
              decoration: BoxDecoration(
                color: magnolia,
                borderRadius: BorderRadius.circular(15),
                boxShadow: shadowInputFields,
              ),
              child: TextFormField(
                obscureText: !visibilityPW,
                style: rubik18darkPurple,
                controller: _passwordField,
                cursorColor: amaranth,
                decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: amaranth, width: 3)),
                    labelText: 'Contraseña',
                    labelStyle: rubik18darkPurple,
                    suffixIcon: IconButton(
                      icon: Icon(
                        visibilityPW
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        color: darkPurple,
                      ),
                      onPressed: () => setState(() {
                        visibilityPW = !visibilityPW;
                      }),
                    )),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.38,
              height: MediaQuery.of(context).size.height / 14,
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
              decoration: BoxDecoration(
                color: magnolia,
                borderRadius: BorderRadius.circular(15),
                boxShadow: shadowInputFields,
              ),
              child: TextFormField(
                obscureText: !visibilityConfirmPW,
                style: rubik18darkPurple,
                controller: _confirmPasswordField,
                cursorColor: amaranth,
                decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: amaranth, width: 3)),
                    labelText: 'Confirmar contraseña',
                    labelStyle: rubik18darkPurple,
                    suffixIcon: IconButton(
                      icon: Icon(
                        visibilityConfirmPW
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        color: darkPurple,
                      ),
                      onPressed: () => setState(() {
                        visibilityConfirmPW = !visibilityConfirmPW;
                      }),
                    )),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.38,
              height: MediaQuery.of(context).size.height / 14,
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
              decoration: BoxDecoration(
                color: magnolia,
                borderRadius: BorderRadius.circular(15),
                boxShadow: shadowInputFields,
              ),
              child: TextFormField(
                style: rubik18darkPurple,
                controller: _cedulaField,
                cursorColor: amaranth,
                decoration: InputDecoration(
                    labelText: 'Cédula',
                    labelStyle: rubik18darkPurple,
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: amaranth, width: 3)),
                    suffixIcon: Icon(
                      Icons.badge_outlined,
                      color: darkPurple,
                    )),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.38,
              height: MediaQuery.of(context).size.height / 14,
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
              decoration: BoxDecoration(
                color: magnolia,
                borderRadius: BorderRadius.circular(15),
                boxShadow: shadowInputFields,
              ),
              child: TextFormField(
                onTap: () {
                  FocusScope.of(context).requestFocus(new FocusNode());

                  _selectDate();
                },
                style: rubik18darkPurple,
                controller: _dobField,
                cursorColor: amaranth,
                decoration: InputDecoration(
                    labelText: 'Fecha de nacimiento',
                    labelStyle: rubik18darkPurple,
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: amaranth, width: 3)),
                    suffixIcon: Icon(
                      Icons.cake_outlined,
                      color: darkPurple,
                    )),
              ),
            ),
            MaterialButton(
              onPressed: () async {
                bool shouldNavigate = await register(
                    _emailField.text,
                    _passwordField.text,
                    _nameField.text,
                    int.parse(_cedulaField.text),
                    _dobField.text);
                if (shouldNavigate) {
                  _registerTap(context);
                }
              },
              child: Container(
                  margin: const EdgeInsets.fromLTRB(0, 14, 0, 35),
                  padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
                  width: MediaQuery.of(context).size.width / 2.76,
                  decoration: BoxDecoration(
                      color: amaranth,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: shadowInputFields),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Registrarse',
                        style: rubik18magnolia,
                      ),
                    ],
                  )),
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.38,
              alignment: Alignment.center,
              child: Text(
                'Si deseas registrarte como organizador ponte en contacto con nosotros.',
                style: rubik13magnolia,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    ));
  }

  void _registerTap(BuildContext context) {
    Navigator.pushNamed(context, homeRoute);
  }
}
