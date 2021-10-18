import 'package:entry/styles.dart';
import 'package:flutter/material.dart';

class CardDescubreFechas extends StatefulWidget {
  final String imagen;

  const CardDescubreFechas({Key? key, required this.imagen}) : super(key: key);

  @override
  _CardDescubreFechasState createState() => _CardDescubreFechasState();
}

class _CardDescubreFechasState extends State<CardDescubreFechas> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: shadowInputFields),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                widget.imagen,
                height: MediaQuery.of(context).size.height * 0.167,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 5, 0, 10),
            child: Text(
              'Kaputt - 31 Oct',
              style: rubik12darkPurple,
            ),
          ),
        ],
      ),
    );
  }
}
