import 'package:entry/styles.dart';
import 'package:entry/widgets/navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
          children: [
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
              padding: EdgeInsets.fromLTRB(24, 3, 0, 3),
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
                    focusedBorder: UnderlineInputBorder(
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
              margin: EdgeInsets.fromLTRB(45, 22, 0, 0),
              child: Text(
                'Busca tu parche',
                style: rubik18darkPurple,
              ),
            ),
            Row(
              children: [
                SvgPicture.asset(
                  'assets/images/undraw_Having_fun_re_vj4h.png',
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
