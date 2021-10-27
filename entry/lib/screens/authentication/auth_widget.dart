import 'package:entry/app.dart';
import 'package:entry/net/flutterfire.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../styles.dart';

class authWidget extends StatefulWidget {
  final bool mobile;
  const authWidget({Key? key, required this.mobile}) : super(key: key);

  @override
  _authWidgetState createState() => _authWidgetState();
}

// ignore: camel_case_types
class _authWidgetState extends State<authWidget> {
  final TextEditingController _emailField = TextEditingController();
  final TextEditingController _passwordField = TextEditingController();
  var visibilityPW = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: darkPurple,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 56),
                width: widget.mobile
                    ? MediaQuery.of(context).size.width / 1.38
                    : 500,
                child: Text('Entry', style: tituloEntryLoginRegister),
              ),
              Container(
                width: widget.mobile
                    ? MediaQuery.of(context).size.width / 1.38
                    : 500,
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 41),
                padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                decoration: BoxDecoration(
                    color: magnolia,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: shadowInputFields),
                child: TextFormField(
                  cursorColor: amaranth,
                  style: rubik18darkPurple,
                  controller: _emailField,
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
                width: widget.mobile
                    ? MediaQuery.of(context).size.width / 1.38
                    : 500,
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 12),
                padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                decoration: BoxDecoration(
                    color: magnolia,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: shadowInputFields),
                child: TextFormField(
                  cursorColor: amaranth,
                  style: rubik18darkPurple,
                  controller: _passwordField,
                  obscureText: !visibilityPW,
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
              SizedBox(
                width: widget.mobile
                    ? MediaQuery.of(context).size.width / 1.38
                    : 500,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '¿Olvidaste tu contraseña?',
                      style: rubik13magnolia,
                    )
                  ],
                ),
              ),
              MaterialButton(
                  onPressed: () async {
                    bool shouldNavigate =
                        await signIn(_emailField.text, _passwordField.text);
                    if (shouldNavigate) {
                      _loginTap(context);
                    }
                  },
                  child: Container(
                      margin: const EdgeInsets.fromLTRB(0, 14, 0, 40),
                      padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
                      width: widget.mobile
                          ? MediaQuery.of(context).size.width / 2.76
                          : 300,
                      decoration: BoxDecoration(
                          color: amaranth,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: shadowInputFields),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Ingresar',
                            style: rubik18magnolia,
                          ),
                        ],
                      ))),
              RichText(
                  text: TextSpan(style: rubik18magnolia, children: [
                const TextSpan(
                  text: '¿No tienes cuenta? ',
                ),
                TextSpan(
                  text: 'Registrate',
                  style: rubik18amaranth,
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => _registerTap(context),
                ),
              ])),
            ],
          )),
    );
  }

  void _loginTap(BuildContext context) {
    Navigator.pushNamed(context, homeRoute);
  }

  void _registerTap(BuildContext context) {
    Navigator.pushNamed(context, registerRoute);
  }
}
