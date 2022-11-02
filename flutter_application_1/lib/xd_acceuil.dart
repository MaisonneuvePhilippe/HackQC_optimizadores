import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './xd_stats_avanc.dart';
import 'package:adobe_xd/page_link.dart';
import './xd_rglage_semaine.dart';
import './xd_profil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import './xd_colors.dart';

class XDAcceuil extends StatelessWidget {
  XDAcceuil({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 28.0, end: 28.0),
            Pin(size: 51.0, end: 28.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xff0093c9),
                borderRadius: BorderRadius.circular(24.0),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 28.0, end: 25.0),
            Pin(size: 509.0, start: 64.0),
            child: SingleChildScrollView(
              primary: false,
              scrollDirection: Axis.horizontal,
              child: SizedBox(
                width: 1009.0,
                height: 509.0,
                child: Stack(
                  children: <Widget>[
                    Pinned.fromPins(
                      Pin(start: 9.0, end: 21.0),
                      Pin(size: 219.0, start: 48.0),
                      child:
                          // Adobe XD layer: 'png-clipart-2018-ni…' (shape)
                          Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: const AssetImage(''),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 292.0, end: -335.0),
                      Pin(size: 219.0, start: 48.0),
                      child:
                          // Adobe XD layer: 'png-clipart-2018-ni…' (shape)
                          Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: const AssetImage(''),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 292.0, end: -691.0),
                      Pin(size: 219.0, start: 48.0),
                      child:
                          // Adobe XD layer: 'png-clipart-2018-ni…' (shape)
                          Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: const AssetImage(''),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(start: 4.0, end: 26.0),
                      Pin(size: 220.0, end: 29.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xfff7f7f7),
                          borderRadius: BorderRadius.circular(23.0),
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 292.0, end: -330.0),
                      Pin(size: 220.0, end: 29.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xfff7f7f7),
                          borderRadius: BorderRadius.circular(23.0),
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 292.0, end: -686.0),
                      Pin(size: 220.0, end: 29.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xfff7f7f7),
                          borderRadius: BorderRadius.circular(23.0),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment(-0.085, 1.0),
                      child: Container(
                        width: 64.0,
                        height: 18.0,
                        decoration: BoxDecoration(
                          color: const Color(0xfff7f7f7),
                          borderRadius: BorderRadius.circular(9.0),
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 64.0, end: -218.0),
                      Pin(size: 18.0, end: 0.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xfff7f7f7),
                          borderRadius: BorderRadius.circular(9.0),
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 64.0, end: -568.0),
                      Pin(size: 18.0, end: 0.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xfff7f7f7),
                          borderRadius: BorderRadius.circular(9.0),
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 10.0, middle: 0.5353),
                      Pin(size: 10.0, end: 4.0),
                      child: Transform.rotate(
                        angle: 0.0,
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xffefefef),
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 10.0, end: -213.0),
                      Pin(size: 10.0, end: 4.0),
                      child: Transform.rotate(
                        angle: 0.0,
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xffefefef),
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 10.0, end: -541.0),
                      Pin(size: 10.0, end: 4.0),
                      child: Transform.rotate(
                        angle: 0.0,
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xffefefef),
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 10.0, middle: 0.4647),
                      Pin(size: 10.0, end: 4.0),
                      child: Transform.rotate(
                        angle: 0.0,
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xffefefef),
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 10.0, end: -169.0),
                      Pin(size: 10.0, end: 4.0),
                      child: Transform.rotate(
                        angle: 0.0,
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xffefefef),
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 10.0, end: -519.0),
                      Pin(size: 10.0, end: 4.0),
                      child: Transform.rotate(
                        angle: 0.0,
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xffefefef),
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 10.0, middle: 0.3942),
                      Pin(size: 10.0, end: 4.0),
                      child: Transform.rotate(
                        angle: 0.0,
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xff0093c9),
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 10.0, end: -191.0),
                      Pin(size: 10.0, end: 4.0),
                      child: Transform.rotate(
                        angle: 0.0,
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xff0093c9),
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 10.0, end: -563.0),
                      Pin(size: 10.0, end: 4.0),
                      child: Transform.rotate(
                        angle: 0.0,
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xff0093c9),
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(start: 35.0, end: 57.0),
                      Pin(size: 53.0, start: 0.0),
                      child: Text(
                        'Nissan Leaf',
                        style: TextStyle(
                          fontFamily: 'Pangram',
                          fontSize: 40,
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 230.0, end: -299.0),
                      Pin(size: 53.0, start: 0.0),
                      child: Text(
                        'Tesla',
                        style: TextStyle(
                          fontFamily: 'Pangram',
                          fontSize: 40,
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 230.0, end: -648.0),
                      Pin(size: 53.0, start: 0.0),
                      child: Text(
                        'Tesla 2',
                        style: TextStyle(
                          fontFamily: 'Pangram',
                          fontSize: 40,
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 223.0, start: 38.0),
                      Pin(size: 20.0, start: 48.0),
                      child: Text(
                        '30 oct. - 5 nov. 2022',
                        style: TextStyle(
                          fontFamily: 'Pangram',
                          fontSize: 15,
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 223.0, end: -298.0),
                      Pin(size: 20.0, start: 48.0),
                      child: Text(
                        '30 oct. - 5 nov. 2022',
                        style: TextStyle(
                          fontFamily: 'Pangram',
                          fontSize: 15,
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 223.0, end: -647.0),
                      Pin(size: 20.0, start: 48.0),
                      child: Text(
                        '30 oct. - 5 nov. 2022',
                        style: TextStyle(
                          fontFamily: 'Pangram',
                          fontSize: 15,
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 120.0, start: 17.0),
                      Pin(size: 74.0, middle: 0.6483),
                      child: Stack(
                        children: <Widget>[
                          Pinned.fromPins(
                            Pin(start: 12.0, end: 12.0),
                            Pin(size: 20.0, end: 0.0),
                            child: Text(
                              'Batterie',
                              style: TextStyle(
                                fontFamily: 'Pangram',
                                fontSize: 15,
                                color: const Color(0xff000000),
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(start: 0.0, end: 0.0),
                            Pin(size: 53.0, middle: 0.0),
                            child: Text(
                              '86%',
                              style: TextStyle(
                                fontFamily: 'Pangram',
                                fontSize: 40,
                                color: const Color(0xff0093c9),
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 120.0, end: -171.0),
                      Pin(size: 74.0, middle: 0.6483),
                      child: Stack(
                        children: <Widget>[
                          Pinned.fromPins(
                            Pin(start: 12.0, end: 12.0),
                            Pin(size: 20.0, end: 0.0),
                            child: Text(
                              'Batterie',
                              style: TextStyle(
                                fontFamily: 'Pangram',
                                fontSize: 15,
                                color: const Color(0xff000000),
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(start: 0.0, end: 0.0),
                            Pin(size: 53.0, middle: 0.0),
                            child: Text(
                              '100%',
                              style: TextStyle(
                                fontFamily: 'Pangram',
                                fontSize: 40,
                                color: const Color(0xff0093c9),
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 120.0, end: -527.0),
                      Pin(size: 74.0, middle: 0.6483),
                      child: Stack(
                        children: <Widget>[
                          Pinned.fromPins(
                            Pin(start: 12.0, end: 12.0),
                            Pin(size: 20.0, end: 0.0),
                            child: Text(
                              'Batterie',
                              style: TextStyle(
                                fontFamily: 'Pangram',
                                fontSize: 15,
                                color: const Color(0xff000000),
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(start: 0.0, end: 0.0),
                            Pin(size: 53.0, middle: 0.0),
                            child: Text(
                              '12%',
                              style: TextStyle(
                                fontFamily: 'Pangram',
                                fontSize: 40,
                                color: const Color(0xff0093c9),
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 148.0, end: 24.0),
                      Pin(size: 74.0, middle: 0.6483),
                      child: Stack(
                        children: <Widget>[
                          Pinned.fromPins(
                            Pin(start: 26.0, end: 26.0),
                            Pin(size: 20.0, end: 0.0),
                            child: Text(
                              'Fin recharge',
                              style: TextStyle(
                                fontFamily: 'Pangram',
                                fontSize: 15,
                                color: const Color(0xff000000),
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(start: 0.0, end: 0.0),
                            Pin(size: 53.0, middle: 0.0),
                            child: Text(
                              '2h17',
                              style: TextStyle(
                                fontFamily: 'Pangram',
                                fontSize: 40,
                                color: const Color(0xff0093c9),
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 148.0, end: -332.0),
                      Pin(size: 74.0, middle: 0.6483),
                      child: Stack(
                        children: <Widget>[
                          Pinned.fromPins(
                            Pin(start: 26.0, end: 26.0),
                            Pin(size: 20.0, end: 0.0),
                            child: Text(
                              'Fin recharge',
                              style: TextStyle(
                                fontFamily: 'Pangram',
                                fontSize: 15,
                                color: const Color(0xff000000),
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(start: 0.0, end: 0.0),
                            Pin(size: 53.0, middle: 0.0),
                            child: Text(
                              '0h',
                              style: TextStyle(
                                fontFamily: 'Pangram',
                                fontSize: 40,
                                color: const Color(0xff0093c9),
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 148.0, end: -688.0),
                      Pin(size: 74.0, middle: 0.6483),
                      child: Stack(
                        children: <Widget>[
                          Pinned.fromPins(
                            Pin(start: 26.0, end: 26.0),
                            Pin(size: 20.0, end: 0.0),
                            child: Text(
                              'Fin recharge',
                              style: TextStyle(
                                fontFamily: 'Pangram',
                                fontSize: 15,
                                color: const Color(0xff000000),
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(start: 0.0, end: 0.0),
                            Pin(size: 53.0, middle: 0.0),
                            child: Text(
                              '3h53',
                              style: TextStyle(
                                fontFamily: 'Pangram',
                                fontSize: 40,
                                color: const Color(0xff0093c9),
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 140.0, middle: 0.4396),
                      Pin(size: 74.0, end: 54.0),
                      child: Stack(
                        children: <Widget>[
                          Pinned.fromPins(
                            Pin(size: 96.0, start: 18.0),
                            Pin(size: 20.0, end: 0.0),
                            child: Text(
                              'Économie',
                              style: TextStyle(
                                fontFamily: 'Pangram',
                                fontSize: 15,
                                color: const Color(0xff000000),
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(start: 0.0, end: 0.0),
                            Pin(size: 53.0, middle: 0.0),
                            child: Text(
                              '25,16\$',
                              style: TextStyle(
                                fontFamily: 'Pangram',
                                fontSize: 40,
                                color: const Color(0xff0093c9),
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 156.0, end: -262.0),
                      Pin(size: 80.0, end: 54.0),
                      child: Stack(
                        children: <Widget>[
                          Align(
                            alignment: Alignment(-0.133, 1.0),
                            child: SizedBox(
                              width: 96.0,
                              height: 20.0,
                              child: Text(
                                'Économie',
                                style: TextStyle(
                                  fontFamily: 'Pangram',
                                  fontSize: 15,
                                  color: const Color(0xff000000),
                                  fontWeight: FontWeight.w700,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(start: 0.0, end: 0.0),
                            Pin(size: 53.0, start: 0.0),
                            child: Text(
                              '112,76\$',
                              style: TextStyle(
                                fontFamily: 'Pangram',
                                fontSize: 40,
                                color: const Color(0xff0093c9),
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 140.0, end: -610.0),
                      Pin(size: 74.0, end: 54.0),
                      child: Stack(
                        children: <Widget>[
                          Pinned.fromPins(
                            Pin(size: 96.0, start: 18.0),
                            Pin(size: 20.0, end: 0.0),
                            child: Text(
                              'Économie',
                              style: TextStyle(
                                fontFamily: 'Pangram',
                                fontSize: 15,
                                color: const Color(0xff000000),
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(start: 0.0, end: 0.0),
                            Pin(size: 53.0, middle: 0.0),
                            child: Text(
                              '74,89\$',
                              style: TextStyle(
                                fontFamily: 'Pangram',
                                fontSize: 40,
                                color: const Color(0xff0093c9),
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 36.0, middle: 0.1711),
            Pin(size: 29.0, end: 39.0),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 16.0, start: 0.0),
                  child: SvgPicture.string(
                    _svg_m3unk9,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: 16.0,
                    height: 17.0,
                    decoration: BoxDecoration(
                      color: const Color(0xffffffff),
                      borderRadius: BorderRadius.circular(3.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 28.0, middle: 0.4092),
            Pin(size: 29.0, end: 39.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.PushUp,
                  ease: Curves.easeInOut,
                  duration: 1.0,
                  pageBuilder: () => XDStatsAvanc(),
                ),
              ],
              child: Stack(
                children: <Widget>[
                  Pinned.fromPins(
                    Pin(size: 8.0, middle: 0.5),
                    Pin(start: 0.0, end: 0.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xffffffff),
                        borderRadius: BorderRadius.circular(2.0),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      width: 8.0,
                      height: 18.0,
                      decoration: BoxDecoration(
                        color: const Color(0xffffffff),
                        borderRadius: BorderRadius.circular(2.0),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      width: 8.0,
                      height: 11.0,
                      decoration: BoxDecoration(
                        color: const Color(0xffffffff),
                        borderRadius: BorderRadius.circular(2.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 29.0, middle: 0.6185),
            Pin(size: 29.0, end: 39.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.PushUp,
                  ease: Curves.easeInOut,
                  duration: 1.0,
                  pageBuilder: () => XDRglageSemaine(),
                ),
              ],
              child: SvgPicture.string(
                _svg_yml0dx,
                allowDrawingOutsideViewBox: true,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 27.0, middle: 0.8333),
            Pin(size: 29.0, end: 39.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.PushUp,
                  ease: Curves.easeInOut,
                  duration: 1.0,
                  pageBuilder: () => XDProfil(),
                ),
              ],
              child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: 13.0,
                      height: 13.0,
                      decoration: BoxDecoration(
                        color: const Color(0xffffffff),
                        borderRadius: BorderRadius.circular(3.0),
                      ),
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(start: 0.0, end: 0.0),
                    Pin(size: 13.0, end: 0.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xffffffff),
                        borderRadius: BorderRadius.circular(3.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.003, 0.582),
            child: SizedBox(
              width: 64.0,
              height: 80.0,
              child: Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xfff7f7f7),
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                    ),
                    margin: EdgeInsets.fromLTRB(0.0, 16.0, 0.0, 0.0),
                  ),
                  Pinned.fromPins(
                    Pin(size: 42.0, middle: 0.5),
                    Pin(start: 0.0, end: 0.0),
                    child: Text(
                      '+',
                      style: TextStyle(
                        fontFamily: 'Pangram',
                        fontSize: 60,
                        color: const Color(0xff0093c9),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                      softWrap: false,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_m3unk9 =
    '<svg viewBox="-0.2 0.0 36.0 16.0" ><path transform="translate(-0.18, 0.0)" d="M 16.67127227783203 1.181091070175171 C 17.42904472351074 0.5075159668922424 18.57095527648926 0.5075159668922424 19.32872772216797 1.181091070175171 L 32.06832885742188 12.50518131256104 C 33.44284057617188 13.72696876525879 32.57863616943359 16 30.73960113525391 16 L 5.260398864746094 16 C 3.421364784240723 16 2.557159900665283 13.72696876525879 3.931671142578125 12.50518131256104 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_yml0dx =
    '<svg viewBox="214.0 744.0 29.0 29.0" ><path transform="translate(214.0, 744.0)" d="M 15.60690116882324 28.99980163574219 L 13.39290046691895 28.99980163574219 C 12.29021072387695 28.99980163574219 11.39310073852539 28.10269165039062 11.39310073852539 27 L 11.39310073852539 24.78600120544434 C 11.39310073852539 24.65552139282227 11.40612125396729 24.52379989624023 11.43180084228516 24.39450073242188 C 10.82794094085693 24.20828056335449 10.23633098602295 23.96293067932129 9.674100875854492 23.66640090942383 C 9.599861145019531 23.77681159973145 9.515240669250488 23.8792610168457 9.423900604248047 23.97060012817383 L 7.857900619506836 25.53570175170898 C 7.480510711669922 25.91352081298828 6.978500843048096 26.12160110473633 6.444340705871582 26.12160110473633 C 5.910171031951904 26.12160110473633 5.407920837402344 25.91352081298828 5.03010082244873 25.53570175170898 L 3.46410083770752 23.97060012817383 C 3.086920738220215 23.59342002868652 2.879190921783447 23.09113121032715 2.879190921783447 22.55625152587891 C 2.879190921783447 22.02136993408203 3.086920738220215 21.51908111572266 3.46410083770752 21.14190101623535 L 5.03010082244873 19.57590103149414 C 5.124770641326904 19.48123168945312 5.226820945739746 19.3973503112793 5.333400726318359 19.32660102844238 C 5.03856086730957 18.76757049560547 4.793700695037842 18.17606163024902 4.605300903320312 17.56980133056641 C 4.471251010894775 17.59546089172363 4.343111038208008 17.60760116577148 4.214700698852539 17.60760116577148 L 1.999800801277161 17.60760116577148 C 0.8971108198165894 17.60760116577148 8.178710686479462e-07 16.71009063720703 8.178710686479462e-07 15.60690116882324 L 8.178710686479462e-07 13.39290046691895 C 8.178710686479462e-07 12.29021072387695 0.8971108198165894 11.39310073852539 1.999800801277161 11.39310073852539 L 4.214700698852539 11.39310073852539 C 4.342910766601562 11.39310073852539 4.474320888519287 11.40582084655762 4.605300903320312 11.43090057373047 C 4.792600631713867 10.82440090179443 5.038260936737061 10.23280048370361 5.334300994873047 9.673200607299805 C 5.226680755615234 9.602340698242188 5.124220848083496 9.518031120300293 5.03010082244873 9.423900604248047 L 3.46410083770752 7.857900619506836 C 3.086280822753906 7.480510711669922 2.878200769424438 6.978500843048096 2.878200769424438 6.444340705871582 C 2.878200769424438 5.910171031951904 3.086280822753906 5.407920837402344 3.46410083770752 5.03010082244873 L 5.03010082244873 3.46410083770752 C 5.407920837402344 3.086280822753906 5.910171031951904 2.878200769424438 6.444340705871582 2.878200769424438 C 6.978500843048096 2.878200769424438 7.480510711669922 3.086280822753906 7.857900619506836 3.46410083770752 L 9.423900604248047 5.03010082244873 C 9.519130706787109 5.125330924987793 9.603011131286621 5.227680683135986 9.673200607299805 5.334300994873047 C 10.23537063598633 5.036900997161865 10.82719039916992 4.791740894317627 11.43090057373047 4.605300903320312 C 11.40559101104736 4.473080635070801 11.39310073852539 4.341280937194824 11.39310073852539 4.214700698852539 L 11.39310073852539 1.999800801277161 C 11.39310073852539 0.8971108198165894 12.29021072387695 8.178710686479462e-07 13.39290046691895 8.178710686479462e-07 L 15.60690116882324 8.178710686479462e-07 C 16.71009063720703 8.178710686479462e-07 17.60760116577148 0.8971108198165894 17.60760116577148 1.999800801277161 L 17.60760116577148 4.214700698852539 C 17.60760116577148 4.344690799713135 17.59524154663086 4.472450733184814 17.56980133056641 4.605300903320312 C 18.17887115478516 4.794580936431885 18.77017021179199 5.039930820465088 19.32660102844238 5.333400726318359 C 19.39803123474121 5.225811004638672 19.48235130310059 5.123661041259766 19.57590103149414 5.03010082244873 L 21.14190101623535 3.46410083770752 C 21.51972007751465 3.086280822753906 22.02201080322266 2.878200769424438 22.55625152587891 2.878200769424438 C 23.09049034118652 2.878200769424438 23.59278106689453 3.086280822753906 23.97060012817383 3.46410083770752 L 25.53570175170898 5.03010082244873 C 25.91352081298828 5.407920837402344 26.12160110473633 5.910171031951904 26.12160110473633 6.444340705871582 C 26.12160110473633 6.978500843048096 25.91352081298828 7.480510711669922 25.53570175170898 7.857900619506836 L 23.97060012817383 9.423900604248047 C 23.87812042236328 9.516390800476074 23.77577018737793 9.600570678710938 23.66640090942383 9.674100875854492 C 23.96428108215332 10.23890113830566 24.20914077758789 10.83071041107178 24.39450073242188 11.43180084228516 C 24.52502059936523 11.40589046478271 24.6571216583252 11.39310073852539 24.78600120544434 11.39310073852539 L 27 11.39310073852539 C 28.10269165039062 11.39310073852539 28.99980163574219 12.29021072387695 28.99980163574219 13.39290046691895 L 28.99980163574219 15.60690116882324 C 28.99980163574219 16.71009063720703 28.10269165039062 17.60760116577148 27 17.60760116577148 L 24.78600120544434 17.60760116577148 C 24.65552139282227 17.60760116577148 24.52379989624023 17.59458160400391 24.39450073242188 17.56890106201172 C 24.2073802947998 18.17477989196777 23.9620304107666 18.76608085632324 23.66640090942383 19.3257007598877 C 23.77681159973145 19.39994049072266 23.8792610168457 19.48456001281738 23.97060012817383 19.57590103149414 L 25.53570175170898 21.14190101623535 C 25.91287994384766 21.51908111572266 26.1206111907959 22.02136993408203 26.1206111907959 22.55625152587891 C 26.1206111907959 23.09113121032715 25.91287994384766 23.59342002868652 25.53570175170898 23.97060012817383 L 23.97060012817383 25.53570175170898 C 23.59278106689453 25.91352081298828 23.09049034118652 26.12160110473633 22.55625152587891 26.12160110473633 C 22.02201080322266 26.12160110473633 21.51972007751465 25.91352081298828 21.14190101623535 25.53570175170898 L 19.57590103149414 23.97060012817383 C 19.4834098815918 23.87812042236328 19.39923095703125 23.77577018737793 19.3257007598877 23.66640090942383 C 18.76352119445801 23.96338081359863 18.17201042175293 24.2082405090332 17.56890106201172 24.39450073242188 C 17.59481048583984 24.52500152587891 17.60760116577148 24.65710067749023 17.60760116577148 24.78600120544434 L 17.60760116577148 27 C 17.60760116577148 28.10269165039062 16.71009063720703 28.99980163574219 15.60690116882324 28.99980163574219 Z M 14.49990081787109 10.35720062255859 C 12.21561050415039 10.35720062255859 10.35720062255859 12.21561050415039 10.35720062255859 14.49990081787109 C 10.35720062255859 16.7841911315918 12.21561050415039 18.64260101318359 14.49990081787109 18.64260101318359 C 16.7841911315918 18.64260101318359 18.64260101318359 16.7841911315918 18.64260101318359 14.49990081787109 C 18.64260101318359 12.21561050415039 16.7841911315918 10.35720062255859 14.49990081787109 10.35720062255859 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
