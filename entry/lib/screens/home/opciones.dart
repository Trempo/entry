import 'package:entry/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Opciones extends StatelessWidget {
  const Opciones({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(45, 30, 0, 0),
      width: MediaQuery.of(context).size.width * 0.78,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MaterialButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                print('Hola');
              },
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 12),
                    child: SvgPicture.asset(
                      'assets/images/undraw_Having_fun_re_vj4h.svg',
                      width: MediaQuery.of(context).size.width * 0.224,
                      height: MediaQuery.of(context).size.height * 0.08,
                      semanticsLabel: 'Discotecas',
                    ),
                  ),
                  Text(
                    'Discotecas',
                    style: rubik13darkPurple,
                  )
                ],
              )),
          MaterialButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                print('Hola');
              },
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 12),
                    child: SvgPicture.asset(
                      'assets/images/undraw_festivities_tvvj.svg',
                      width: MediaQuery.of(context).size.width * 0.224,
                      height: MediaQuery.of(context).size.height * 0.08,
                      semanticsLabel: 'Eventos',
                    ),
                  ),
                  Text(
                    'Eventos',
                    style: rubik13darkPurple,
                  )
                ],
              )),
          MaterialButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                print('Hola');
              },
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 12),
                    child: SvgPicture.asset(
                      'assets/images/undraw_beer_xg5f.svg',
                      width: MediaQuery.of(context).size.width * 0.224,
                      height: MediaQuery.of(context).size.height * 0.08,
                      semanticsLabel: 'Discotecas',
                    ),
                  ),
                  Text(
                    'Bares',
                    style: rubik13darkPurple,
                  )
                ],
              )),
        ],
      ),
    );
  }
}
