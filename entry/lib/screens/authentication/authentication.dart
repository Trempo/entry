import 'package:entry/app.dart';
import 'package:entry/net/flutterfire.dart';
import 'package:entry/screens/home/home.dart';
import 'package:entry/styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Authentication extends StatefulWidget {
  Authentication({Key? key}) : super(key: key);

  @override
  _AuthenticationState createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {
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
                width: MediaQuery.of(context).size.width / 1.38,
                child: Text('Entry', style: tituloEntryLoginRegister),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1.38,
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 41),
                padding: EdgeInsets.fromLTRB(24, 0, 24, 0),
                decoration: BoxDecoration(
                    color: magnolia,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: shadowInputFields),
                child: TextFormField(
                  style: rubik18darkPurple,
                  controller: _emailField,
                  decoration: InputDecoration(
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
                margin: EdgeInsets.fromLTRB(0, 0, 0, 12),
                padding: EdgeInsets.fromLTRB(24, 0, 24, 0),
                decoration: BoxDecoration(
                    color: magnolia,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: shadowInputFields),
                child: TextFormField(
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
              Container(
                width: MediaQuery.of(context).size.width / 1.38,
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
                      width: MediaQuery.of(context).size.width / 2.76,
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
    Navigator.pushNamed(context, HomeRoute);
  }

  void _registerTap(BuildContext context) {
    Navigator.pushNamed(context, RegisterRoute);
  }
}
