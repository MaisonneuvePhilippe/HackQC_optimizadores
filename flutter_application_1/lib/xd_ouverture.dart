import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './xd_stats_avanc.dart';
import 'package:adobe_xd/page_link.dart';
import './xd_rglage_semaine.dart';
import './xd_profil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import './xd_colors.dart';

class XDOuverture extends StatelessWidget {
  XDOuverture({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0093c9),
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment(0.004, -0.01),
            child: SizedBox(
              width: 114.0,
              height: 301.0,
              child: Text(
                'RE\nCH\nAR\nGE',
                style: TextStyle(
                  fontFamily: 'Pangram',
                  fontSize: 80,
                  color: const Color(0xffffffff),
                  fontWeight: FontWeight.w900,
                  height: 0.8125,
                ),
                textHeightBehavior:
                    TextHeightBehavior(applyHeightToFirstAscent: false),
                textAlign: TextAlign.center,
                softWrap: false,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
