import 'package:entry/screens/home/card_descubre_fechas.dart';
import 'package:entry/screens/home/opciones.dart';
import 'package:entry/styles.dart';
import 'package:entry/widgets/navbar.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController _searchField = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavBar(),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: magnolia,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(
                  45, MediaQuery.of(context).size.height * 0.0636, 0, 0),
              child: Text(
                'Entry',
                style: rubik24darkPurple,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.78,
              height: 36,
              margin: const EdgeInsets.fromLTRB(45, 10, 0, 0),
              padding: const EdgeInsets.fromLTRB(24, 3, 0, 3),
              decoration: BoxDecoration(
                color: amaranth,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFormField(
                textAlignVertical: TextAlignVertical.center,
                cursorColor: magnolia,
                style: rubik18magnolia,
                controller: _searchField,
                decoration: InputDecoration(
                    isDense: true,
                    contentPadding: EdgeInsets.zero,
                    enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent)),
                    focusedBorder: const UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.transparent, width: 0)),
                    suffixIcon: Icon(
                      Icons.search,
                      color: magnolia,
                    )),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.78,
              margin: const EdgeInsets.fromLTRB(45, 22, 0, 0),
              child: Text(
                'Busca tu parche',
                style: rubik18darkPurple,
              ),
            ),
            const Opciones(),
            Container(
              width: MediaQuery.of(context).size.width * 0.78,
              margin: const EdgeInsets.fromLTRB(45, 22, 0, 0),
              child: Text(
                'Descubre algo nuevo',
                style: rubik18darkPurple,
              ),
            ),
            Flexible(
              child: Container(
                  width: MediaQuery.of(context).size.width * 0.78,
                  padding: EdgeInsets.all(0),
                  margin: const EdgeInsets.fromLTRB(45, 0, 0, 0),
                  child: GlowingOverscrollIndicator(
                    axisDirection: AxisDirection.down,
                    color: Colors.transparent,
                    child: GridView.count(
                      physics: BouncingScrollPhysics(),
                      crossAxisCount: 2,
                      childAspectRatio: 0.85,
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                      children: const [
                        CardDescubreFechas(
                            imagen: 'assets/images/download.jpg'),
                        CardDescubreFechas(
                            imagen: 'assets/images/download.jpg'),
                        CardDescubreFechas(
                            imagen: 'assets/images/download.jpg'),
                        CardDescubreFechas(
                            imagen: 'assets/images/download.jpg'),
                        CardDescubreFechas(
                            imagen: 'assets/images/download.jpg'),
                        CardDescubreFechas(
                            imagen: 'assets/images/download.jpg'),
                        CardDescubreFechas(
                            imagen: 'assets/images/download.jpg'),
                        CardDescubreFechas(
                            imagen: 'assets/images/download.jpg'),
                      ],
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
