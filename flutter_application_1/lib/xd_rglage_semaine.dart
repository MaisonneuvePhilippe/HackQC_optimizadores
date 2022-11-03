import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './xd_acceuil.dart';
import 'package:adobe_xd/page_link.dart';
import './xd_stats_avanc.dart';
import './xd_profil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDRglageSemaine extends StatelessWidget {
  XDRglageSemaine({
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
            Pin(size: 36.0, middle: 0.1711),
            Pin(size: 29.0, end: 39.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeInOut,
                  duration: 0.6,
                  pageBuilder: () => XDAcceuil(),
                ),
              ],
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
            child: SvgPicture.string(
              _svg_yml0dx,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
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
          Pinned.fromPins(
            Pin(start: 28.0, end: 26.0),
            Pin(size: 399.0, start: 98.0),
            child: SingleChildScrollView(
              primary: false,
              scrollDirection: Axis.horizontal,
              child: SizedBox(
                width: 1036.0,
                height: 399.0,
                child: Stack(
                  children: <Widget>[
                    Pinned.fromPins(
                      Pin(size: 319.0, end: -357.0),
                      Pin(start: 0.0, end: 49.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xfff7f7f7),
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 319.0, end: -716.0),
                      Pin(start: 0.0, end: 49.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xfff7f7f7),
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xfff7f7f7),
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      margin: EdgeInsets.fromLTRB(1.0, 0.0, 1.0, 49.0),
                    ),
                    Pinned.fromPins(
                      Pin(size: 259.0, end: -316.0),
                      Pin(size: 282.5, start: 46.5),
                      child: Stack(
                        children: <Widget>[
                          Pinned.fromPins(
                            Pin(start: 0.0, end: 0.0),
                            Pin(size: 1.0, end: 20.5),
                            child: SvgPicture.string(
                              _svg_u4dz9d,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(start: 0.0, end: 0.0),
                            Pin(size: 1.0, start: 0.0),
                            child: SvgPicture.string(
                              _svg_r8sld,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(start: 0.0, end: 0.0),
                            Pin(size: 1.0, middle: 0.7425),
                            child: SvgPicture.string(
                              _svg_k6nm7z,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(start: 0.0, end: 0.0),
                            Pin(size: 1.0, middle: 0.373),
                            child: SvgPicture.string(
                              _svg_t6onb3,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(start: 0.0, end: 0.0),
                            Pin(size: 1.0, middle: 0.5577),
                            child: SvgPicture.string(
                              _svg_l4cy69,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(start: 0.0, end: 0.0),
                            Pin(size: 1.0, start: 52.0),
                            child: SvgPicture.string(
                              _svg_gytnwf,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(size: 1.0, start: 0.0),
                            Pin(start: 1.0, end: 0.0),
                            child: SvgPicture.string(
                              _svg_yrurxy,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(size: 1.0, middle: 0.2868),
                            Pin(start: 1.0, end: 0.0),
                            child: SvgPicture.string(
                              _svg_z7u6t,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(size: 1.0, middle: 0.5736),
                            Pin(start: 1.0, end: 0.0),
                            child: SvgPicture.string(
                              _svg_tvud91,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(size: 1.0, start: 37.0),
                            Pin(start: 1.0, end: 0.0),
                            child: SvgPicture.string(
                              _svg_nrbnkr,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(size: 1.0, middle: 0.4302),
                            Pin(start: 1.0, end: 0.0),
                            child: SvgPicture.string(
                              _svg_cyk9yj,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(size: 1.0, middle: 0.7171),
                            Pin(start: 1.0, end: 0.0),
                            child: SvgPicture.string(
                              _svg_l0zaj,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(size: 1.0, end: 36.0),
                            Pin(start: 1.0, end: 0.0),
                            child: SvgPicture.string(
                              _svg_nz7q51,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(size: 1.0, end: -1.0),
                            Pin(start: 1.0, end: 0.0),
                            child: SvgPicture.string(
                              _svg_n50dk,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 259.0, end: -675.0),
                      Pin(size: 282.5, start: 46.5),
                      child: Stack(
                        children: <Widget>[
                          Pinned.fromPins(
                            Pin(start: 0.0, end: 0.0),
                            Pin(size: 1.0, end: 20.5),
                            child: SvgPicture.string(
                              _svg_u4dz9d,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(start: 0.0, end: 0.0),
                            Pin(size: 1.0, start: 0.0),
                            child: SvgPicture.string(
                              _svg_r8sld,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(start: 0.0, end: 0.0),
                            Pin(size: 1.0, middle: 0.7425),
                            child: SvgPicture.string(
                              _svg_k6nm7z,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(start: 0.0, end: 0.0),
                            Pin(size: 1.0, middle: 0.373),
                            child: SvgPicture.string(
                              _svg_t6onb3,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(start: 0.0, end: 0.0),
                            Pin(size: 1.0, middle: 0.5577),
                            child: SvgPicture.string(
                              _svg_l4cy69,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(start: 0.0, end: 0.0),
                            Pin(size: 1.0, start: 52.0),
                            child: SvgPicture.string(
                              _svg_gytnwf,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(size: 1.0, start: 0.0),
                            Pin(start: 1.0, end: 0.0),
                            child: SvgPicture.string(
                              _svg_yrurxy,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(size: 1.0, start: 37.0),
                            Pin(size: 1.0, start: 1.0),
                            child: SvgPicture.string(
                              _svg_wjt7c9,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(size: 1.0, end: -1.0),
                            Pin(start: 1.0, end: 0.0),
                            child: SvgPicture.string(
                              _svg_n50dk,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(start: 20.0, end: 42.0),
                      Pin(size: 282.5, start: 46.5),
                      child: Stack(
                        children: <Widget>[
                          Pinned.fromPins(
                            Pin(start: 0.0, end: 0.0),
                            Pin(size: 1.0, end: 20.5),
                            child: SvgPicture.string(
                              _svg_u4dz9d,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(start: 0.0, end: 0.0),
                            Pin(size: 1.0, start: 0.0),
                            child: SvgPicture.string(
                              _svg_r8sld,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(start: 0.0, end: 0.0),
                            Pin(size: 1.0, middle: 0.7425),
                            child: SvgPicture.string(
                              _svg_k6nm7z,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(start: 0.0, end: 0.0),
                            Pin(size: 1.0, middle: 0.373),
                            child: SvgPicture.string(
                              _svg_t6onb3,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(start: 0.0, end: 0.0),
                            Pin(size: 1.0, middle: 0.5577),
                            child: SvgPicture.string(
                              _svg_l4cy69,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(start: 0.0, end: 0.0),
                            Pin(size: 1.0, start: 52.0),
                            child: SvgPicture.string(
                              _svg_gytnwf,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(size: 1.0, start: 0.0),
                            Pin(start: 1.0, end: 0.0),
                            child: SvgPicture.string(
                              _svg_yrurxy,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(size: 1.0, start: 9.0),
                            Pin(start: 1.0, end: 0.0),
                            child: SvgPicture.string(
                              _svg_acdnjj,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(size: 1.0, start: 20.0),
                            Pin(start: 0.0, end: 1.0),
                            child: SvgPicture.string(
                              _svg_nsyekx,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(size: 1.0, middle: 0.2481),
                            Pin(start: 0.0, end: 1.0),
                            child: SvgPicture.string(
                              _svg_y8z2on,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(size: 1.0, middle: 0.4186),
                            Pin(start: 0.0, end: 1.0),
                            child: SvgPicture.string(
                              _svg_w32x7t,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(size: 1.0, middle: 0.5891),
                            Pin(start: 0.0, end: 1.0),
                            child: SvgPicture.string(
                              _svg_ue5w7r,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(size: 1.0, middle: 0.7597),
                            Pin(start: 0.0, end: 1.0),
                            child: SvgPicture.string(
                              _svg_z37yaf,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(size: 1.0, start: 42.0),
                            Pin(start: 0.0, end: 1.0),
                            child: SvgPicture.string(
                              _svg_m3zc9,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(size: 1.0, middle: 0.3333),
                            Pin(start: 0.0, end: 1.0),
                            child: SvgPicture.string(
                              _svg_y2qf,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(size: 1.0, middle: 0.5039),
                            Pin(start: 0.0, end: 1.0),
                            child: SvgPicture.string(
                              _svg_s04t3,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(size: 1.0, middle: 0.6744),
                            Pin(start: 0.0, end: 1.0),
                            child: SvgPicture.string(
                              _svg_rv3qh,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(size: 1.0, end: 40.0),
                            Pin(start: 0.0, end: 1.0),
                            child: SvgPicture.string(
                              _svg_x6yc7,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(size: 1.0, start: 31.0),
                            Pin(start: 0.0, end: 1.0),
                            child: SvgPicture.string(
                              _svg_oddusv,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(size: 1.0, middle: 0.2907),
                            Pin(start: 0.0, end: 1.0),
                            child: SvgPicture.string(
                              _svg_hnykpj,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(size: 1.0, middle: 0.4612),
                            Pin(start: 0.0, end: 1.0),
                            child: SvgPicture.string(
                              _svg_md0ms7,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(size: 1.0, middle: 0.6318),
                            Pin(start: 0.0, end: 1.0),
                            child: SvgPicture.string(
                              _svg_dt5e8n,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(size: 1.0, middle: 0.8023),
                            Pin(start: 0.0, end: 1.0),
                            child: SvgPicture.string(
                              _svg_ii7gbb,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(size: 1.0, middle: 0.2054),
                            Pin(start: 0.0, end: 1.0),
                            child: SvgPicture.string(
                              _svg_k74hbd,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(size: 1.0, middle: 0.376),
                            Pin(start: 0.0, end: 1.0),
                            child: SvgPicture.string(
                              _svg_fi2f8p,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(size: 1.0, middle: 0.5465),
                            Pin(start: 0.0, end: 1.0),
                            child: SvgPicture.string(
                              _svg_at0d61,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(size: 1.0, middle: 0.7171),
                            Pin(start: 0.0, end: 1.0),
                            child: SvgPicture.string(
                              _svg_jcvlpl,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(size: 1.0, end: 29.0),
                            Pin(start: 0.0, end: 1.0),
                            child: SvgPicture.string(
                              _svg_entjmx,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(size: 1.0, end: 18.0),
                            Pin(start: 0.0, end: 1.0),
                            child: SvgPicture.string(
                              _svg_v8u1m1,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(size: 1.0, end: 7.0),
                            Pin(start: 0.0, end: 1.0),
                            child: SvgPicture.string(
                              _svg_xhfg5z,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(size: 1.0, end: -1.0),
                            Pin(start: 1.0, end: 0.0),
                            child: SvgPicture.string(
                              _svg_n50dk,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 31.0, end: -91.0),
                      Pin(size: 14.0, middle: 0.8104),
                      child: Text(
                        'Dim.',
                        style: TextStyle(
                          fontFamily: 'Pangram',
                          fontSize: 10,
                          color: const Color(0xff000000),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 2.0, start: 24.5),
                      Pin(size: 5.0, middle: 0.8008),
                      child: Text(
                        '0',
                        style: TextStyle(
                          fontFamily: 'Pangram',
                          fontSize: 4,
                          color: const Color(0xff000000),
                        ),
                        textAlign: TextAlign.center,
                        softWrap: false,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 2.0, start: 56.6),
                      Pin(size: 5.0, middle: 0.8008),
                      child: Text(
                        '3',
                        style: TextStyle(
                          fontFamily: 'Pangram',
                          fontSize: 4,
                          color: const Color(0xff000000),
                        ),
                        textAlign: TextAlign.center,
                        softWrap: false,
                      ),
                    ),
                    Align(
                      alignment: Alignment(-0.096, 0.602),
                      child: SizedBox(
                        width: 4.0,
                        height: 5.0,
                        child: Text(
                          '11',
                          style: TextStyle(
                            fontFamily: 'Pangram',
                            fontSize: 4,
                            color: const Color(0xff000000),
                          ),
                          textAlign: TextAlign.center,
                          softWrap: false,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment(0.32, 0.602),
                      child: SizedBox(
                        width: 4.0,
                        height: 5.0,
                        child: Text(
                          '17',
                          style: TextStyle(
                            fontFamily: 'Pangram',
                            fontSize: 4,
                            color: const Color(0xff000000),
                          ),
                          textAlign: TextAlign.center,
                          softWrap: false,
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 2.0, start: 34.5),
                      Pin(size: 5.0, middle: 0.8008),
                      child: Text(
                        '1',
                        style: TextStyle(
                          fontFamily: 'Pangram',
                          fontSize: 4,
                          color: const Color(0xff000000),
                        ),
                        textAlign: TextAlign.center,
                        softWrap: false,
                      ),
                    ),
                    Align(
                      alignment: Alignment(-0.233, 0.602),
                      child: SizedBox(
                        width: 2.0,
                        height: 5.0,
                        child: Text(
                          '9',
                          style: TextStyle(
                            fontFamily: 'Pangram',
                            fontSize: 4,
                            color: const Color(0xff000000),
                          ),
                          textAlign: TextAlign.center,
                          softWrap: false,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment(-0.508, 0.602),
                      child: SizedBox(
                        width: 2.0,
                        height: 5.0,
                        child: Text(
                          '5',
                          style: TextStyle(
                            fontFamily: 'Pangram',
                            fontSize: 4,
                            color: const Color(0xff000000),
                          ),
                          textAlign: TextAlign.center,
                          softWrap: false,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment(0.043, 0.602),
                      child: SizedBox(
                        width: 4.0,
                        height: 5.0,
                        child: Text(
                          '13',
                          style: TextStyle(
                            fontFamily: 'Pangram',
                            fontSize: 4,
                            color: const Color(0xff000000),
                          ),
                          textAlign: TextAlign.center,
                          softWrap: false,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment(0.457, 0.602),
                      child: SizedBox(
                        width: 4.0,
                        height: 5.0,
                        child: Text(
                          '19',
                          style: TextStyle(
                            fontFamily: 'Pangram',
                            fontSize: 4,
                            color: const Color(0xff000000),
                          ),
                          textAlign: TextAlign.center,
                          softWrap: false,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment(-0.576, 0.602),
                      child: SizedBox(
                        width: 2.0,
                        height: 5.0,
                        child: Text(
                          '4',
                          style: TextStyle(
                            fontFamily: 'Pangram',
                            fontSize: 4,
                            color: const Color(0xff000000),
                          ),
                          textAlign: TextAlign.center,
                          softWrap: false,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment(-0.027, 0.602),
                      child: SizedBox(
                        width: 4.0,
                        height: 5.0,
                        child: Text(
                          '12',
                          style: TextStyle(
                            fontFamily: 'Pangram',
                            fontSize: 4,
                            color: const Color(0xff000000),
                          ),
                          textAlign: TextAlign.center,
                          softWrap: false,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment(0.389, 0.602),
                      child: SizedBox(
                        width: 4.0,
                        height: 5.0,
                        child: Text(
                          '18',
                          style: TextStyle(
                            fontFamily: 'Pangram',
                            fontSize: 4,
                            color: const Color(0xff000000),
                          ),
                          textAlign: TextAlign.center,
                          softWrap: false,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment(-0.371, 0.602),
                      child: SizedBox(
                        width: 2.0,
                        height: 5.0,
                        child: Text(
                          '7',
                          style: TextStyle(
                            fontFamily: 'Pangram',
                            fontSize: 4,
                            color: const Color(0xff000000),
                          ),
                          textAlign: TextAlign.center,
                          softWrap: false,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment(0.181, 0.602),
                      child: SizedBox(
                        width: 4.0,
                        height: 5.0,
                        child: Text(
                          '15',
                          style: TextStyle(
                            fontFamily: 'Pangram',
                            fontSize: 4,
                            color: const Color(0xff000000),
                          ),
                          textAlign: TextAlign.center,
                          softWrap: false,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment(-0.302, 0.602),
                      child: SizedBox(
                        width: 2.0,
                        height: 5.0,
                        child: Text(
                          '8',
                          style: TextStyle(
                            fontFamily: 'Pangram',
                            fontSize: 4,
                            color: const Color(0xff000000),
                          ),
                          textAlign: TextAlign.center,
                          softWrap: false,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment(0.251, 0.602),
                      child: SizedBox(
                        width: 4.0,
                        height: 5.0,
                        child: Text(
                          '16',
                          style: TextStyle(
                            fontFamily: 'Pangram',
                            fontSize: 4,
                            color: const Color(0xff000000),
                          ),
                          textAlign: TextAlign.center,
                          softWrap: false,
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 2.0, start: 45.6),
                      Pin(size: 5.0, middle: 0.8008),
                      child: Text(
                        '2',
                        style: TextStyle(
                          fontFamily: 'Pangram',
                          fontSize: 4,
                          color: const Color(0xff000000),
                        ),
                        textAlign: TextAlign.center,
                        softWrap: false,
                      ),
                    ),
                    Align(
                      alignment: Alignment(-0.165, 0.602),
                      child: SizedBox(
                        width: 4.0,
                        height: 5.0,
                        child: Text(
                          '10',
                          style: TextStyle(
                            fontFamily: 'Pangram',
                            fontSize: 4,
                            color: const Color(0xff000000),
                          ),
                          textAlign: TextAlign.center,
                          softWrap: false,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment(-0.44, 0.602),
                      child: SizedBox(
                        width: 2.0,
                        height: 5.0,
                        child: Text(
                          '6',
                          style: TextStyle(
                            fontFamily: 'Pangram',
                            fontSize: 4,
                            color: const Color(0xff000000),
                          ),
                          textAlign: TextAlign.center,
                          softWrap: false,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment(0.112, 0.602),
                      child: SizedBox(
                        width: 4.0,
                        height: 5.0,
                        child: Text(
                          '14',
                          style: TextStyle(
                            fontFamily: 'Pangram',
                            fontSize: 4,
                            color: const Color(0xff000000),
                          ),
                          textAlign: TextAlign.center,
                          softWrap: false,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment(0.527, 0.602),
                      child: SizedBox(
                        width: 4.0,
                        height: 5.0,
                        child: Text(
                          '20',
                          style: TextStyle(
                            fontFamily: 'Pangram',
                            fontSize: 4,
                            color: const Color(0xff000000),
                          ),
                          textAlign: TextAlign.center,
                          softWrap: false,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment(0.596, 0.602),
                      child: SizedBox(
                        width: 4.0,
                        height: 5.0,
                        child: Text(
                          '21',
                          style: TextStyle(
                            fontFamily: 'Pangram',
                            fontSize: 4,
                            color: const Color(0xff000000),
                          ),
                          textAlign: TextAlign.center,
                          softWrap: false,
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 4.0, end: 53.0),
                      Pin(size: 5.0, middle: 0.8008),
                      child: Text(
                        '22',
                        style: TextStyle(
                          fontFamily: 'Pangram',
                          fontSize: 4,
                          color: const Color(0xff000000),
                        ),
                        textAlign: TextAlign.center,
                        softWrap: false,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 4.0, end: 43.0),
                      Pin(size: 5.0, middle: 0.8008),
                      child: Text(
                        '23',
                        style: TextStyle(
                          fontFamily: 'Pangram',
                          fontSize: 4,
                          color: const Color(0xff000000),
                        ),
                        textAlign: TextAlign.center,
                        softWrap: false,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 31.0, end: -202.0),
                      Pin(size: 14.0, middle: 0.8104),
                      child: Text(
                        'Mer.',
                        style: TextStyle(
                          fontFamily: 'Pangram',
                          fontSize: 10,
                          color: const Color(0xff000000),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 31.0, end: -128.0),
                      Pin(size: 14.0, middle: 0.8104),
                      child: Text(
                        'Lun.',
                        style: TextStyle(
                          fontFamily: 'Pangram',
                          fontSize: 10,
                          color: const Color(0xff000000),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 31.0, end: -239.0),
                      Pin(size: 14.0, middle: 0.8104),
                      child: Text(
                        'Jeu.',
                        style: TextStyle(
                          fontFamily: 'Pangram',
                          fontSize: 10,
                          color: const Color(0xff000000),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 31.0, end: -165.0),
                      Pin(size: 14.0, middle: 0.8104),
                      child: Text(
                        'Mar.',
                        style: TextStyle(
                          fontFamily: 'Pangram',
                          fontSize: 10,
                          color: const Color(0xff000000),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 31.0, end: -276.0),
                      Pin(size: 14.0, middle: 0.8104),
                      child: Text(
                        'Ven.',
                        style: TextStyle(
                          fontFamily: 'Pangram',
                          fontSize: 10,
                          color: const Color(0xff000000),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 31.0, end: -313.0),
                      Pin(size: 14.0, middle: 0.8104),
                      child: Text(
                        'Sam.',
                        style: TextStyle(
                          fontFamily: 'Pangram',
                          fontSize: 10,
                          color: const Color(0xff000000),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 31.0, end: -460.0),
                      Pin(size: 14.0, middle: 0.8104),
                      child: Text(
                        'Sem 1.',
                        style: TextStyle(
                          fontFamily: 'Pangram',
                          fontSize: 10,
                          color: const Color(0xff000000),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 36.0, end: -598.0),
                      Pin(size: 14.0, middle: 0.8104),
                      child: Text(
                        'Sem 3.',
                        style: TextStyle(
                          fontFamily: 'Pangram',
                          fontSize: 10,
                          color: const Color(0xff000000),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 37.0, end: -529.0),
                      Pin(size: 14.0, middle: 0.8104),
                      child: Text(
                        'Sem 2.',
                        style: TextStyle(
                          fontFamily: 'Pangram',
                          fontSize: 10,
                          color: const Color(0xff000000),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 35.0, end: -661.0),
                      Pin(size: 14.0, middle: 0.8104),
                      child: Text(
                        'Sem 4.',
                        style: TextStyle(
                          fontFamily: 'Pangram',
                          fontSize: 10,
                          color: const Color(0xff000000),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 31.0, end: -351.0),
                      Pin(size: 14.0, middle: 0.6494),
                      child: Text(
                        '20%',
                        style: TextStyle(
                          fontFamily: 'Pangram',
                          fontSize: 10,
                          color: const Color(0xff000000),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 31.0, end: -710.0),
                      Pin(size: 14.0, middle: 0.6494),
                      child: Text(
                        '20%',
                        style: TextStyle(
                          fontFamily: 'Pangram',
                          fontSize: 10,
                          color: const Color(0xff000000),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 31.0, end: 7.0),
                      Pin(size: 14.0, middle: 0.6494),
                      child: Text(
                        '20%',
                        style: TextStyle(
                          fontFamily: 'Pangram',
                          fontSize: 10,
                          color: const Color(0xff000000),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 31.0, end: -351.0),
                      Pin(size: 14.0, middle: 0.5143),
                      child: Text(
                        '40%',
                        style: TextStyle(
                          fontFamily: 'Pangram',
                          fontSize: 10,
                          color: const Color(0xff000000),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 31.0, end: -710.0),
                      Pin(size: 14.0, middle: 0.5143),
                      child: Text(
                        '40%',
                        style: TextStyle(
                          fontFamily: 'Pangram',
                          fontSize: 10,
                          color: const Color(0xff000000),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 31.0, end: 7.0),
                      Pin(size: 14.0, middle: 0.5143),
                      child: Text(
                        '40%',
                        style: TextStyle(
                          fontFamily: 'Pangram',
                          fontSize: 10,
                          color: const Color(0xff000000),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 31.0, end: -351.0),
                      Pin(size: 14.0, middle: 0.3792),
                      child: Text(
                        '60%',
                        style: TextStyle(
                          fontFamily: 'Pangram',
                          fontSize: 10,
                          color: const Color(0xff000000),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 31.0, end: -710.0),
                      Pin(size: 14.0, middle: 0.3792),
                      child: Text(
                        '60%',
                        style: TextStyle(
                          fontFamily: 'Pangram',
                          fontSize: 10,
                          color: const Color(0xff000000),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 31.0, end: 7.0),
                      Pin(size: 14.0, middle: 0.3792),
                      child: Text(
                        '60%',
                        style: TextStyle(
                          fontFamily: 'Pangram',
                          fontSize: 10,
                          color: const Color(0xff000000),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 31.0, end: -351.0),
                      Pin(size: 14.0, middle: 0.2442),
                      child: Text(
                        '80%',
                        style: TextStyle(
                          fontFamily: 'Pangram',
                          fontSize: 10,
                          color: const Color(0xff000000),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 31.0, end: -710.0),
                      Pin(size: 14.0, middle: 0.2442),
                      child: Text(
                        '80%',
                        style: TextStyle(
                          fontFamily: 'Pangram',
                          fontSize: 10,
                          color: const Color(0xff000000),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 31.0, end: 7.0),
                      Pin(size: 14.0, middle: 0.2442),
                      child: Text(
                        '80%',
                        style: TextStyle(
                          fontFamily: 'Pangram',
                          fontSize: 10,
                          color: const Color(0xff000000),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 31.0, end: -351.0),
                      Pin(size: 14.0, start: 42.0),
                      child: Text(
                        '100%',
                        style: TextStyle(
                          fontFamily: 'Pangram',
                          fontSize: 10,
                          color: const Color(0xff000000),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 31.0, end: -710.0),
                      Pin(size: 14.0, start: 42.0),
                      child: Text(
                        '100%',
                        style: TextStyle(
                          fontFamily: 'Pangram',
                          fontSize: 10,
                          color: const Color(0xff000000),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 31.0, end: 7.0),
                      Pin(size: 14.0, start: 42.0),
                      child: Text(
                        '100%',
                        style: TextStyle(
                          fontFamily: 'Pangram',
                          fontSize: 10,
                          color: const Color(0xff000000),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 319.0, end: -357.0),
                      Pin(size: 28.0, end: 0.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xfff7f7f7),
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 319.0, end: -716.0),
                      Pin(size: 28.0, end: 0.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xfff7f7f7),
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(start: 1.0, end: 1.0),
                      Pin(size: 28.0, end: 0.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xfff7f7f7),
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 107.0, start: 1.0),
                      Pin(size: 28.0, end: 0.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xff0093c9),
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 107.0, end: -251.0),
                      Pin(size: 28.0, end: 0.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xff0093c9),
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 1.0, end: -504.0),
                      Pin(size: 3.4, end: 10.6),
                      child: SvgPicture.string(
                        _svg_qwv6uh,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 107.0, end: -716.0),
                      Pin(size: 28.0, end: 0.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xff0093c9),
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 43.0, end: -113.0),
                      Pin(size: 20.0, end: 4.0),
                      child: Text(
                        'J',
                        style: TextStyle(
                          fontFamily: 'Pangram',
                          fontSize: 15,
                          color: const Color(0xffffffff),
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 43.0, end: -472.0),
                      Pin(size: 20.0, end: 4.0),
                      child: Text(
                        'J',
                        style: TextStyle(
                          fontFamily: 'Pangram',
                          fontSize: 15,
                          color: const Color(0xffffffff),
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 43.0, start: 33.0),
                      Pin(size: 20.0, end: 4.0),
                      child: Text(
                        'J',
                        style: TextStyle(
                          fontFamily: 'Pangram',
                          fontSize: 15,
                          color: const Color(0xffffffff),
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 43.0, end: -219.0),
                      Pin(size: 20.0, end: 4.0),
                      child: Text(
                        'S',
                        style: TextStyle(
                          fontFamily: 'Pangram',
                          fontSize: 15,
                          color: const Color(0xffffffff),
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 43.0, end: -578.0),
                      Pin(size: 20.0, end: 4.0),
                      child: Text(
                        'S',
                        style: TextStyle(
                          fontFamily: 'Pangram',
                          fontSize: 15,
                          color: const Color(0xffffffff),
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 43.0, middle: 0.5),
                      Pin(size: 20.0, end: 4.0),
                      child: Text(
                        'S',
                        style: TextStyle(
                          fontFamily: 'Pangram',
                          fontSize: 15,
                          color: const Color(0xffffffff),
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 43.0, end: -325.0),
                      Pin(size: 20.0, end: 4.0),
                      child: Text(
                        'M',
                        style: TextStyle(
                          fontFamily: 'Pangram',
                          fontSize: 15,
                          color: const Color(0xffffffff),
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 43.0, end: -684.0),
                      Pin(size: 20.0, end: 4.0),
                      child: Text(
                        'M',
                        style: TextStyle(
                          fontFamily: 'Pangram',
                          fontSize: 15,
                          color: const Color(0xffffffff),
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 43.0, end: 33.0),
                      Pin(size: 20.0, end: 4.0),
                      child: Text(
                        'M',
                        style: TextStyle(
                          fontFamily: 'Pangram',
                          fontSize: 15,
                          color: const Color(0xffffffff),
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 223.0, end: -280.0),
                      Pin(size: 20.0, start: 14.0),
                      child: Text(
                        '30 oct. - 5 nov. 2022',
                        style: TextStyle(
                          fontFamily: 'Pangram',
                          fontSize: 15,
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 223.0, end: -639.0),
                      Pin(size: 20.0, start: 14.0),
                      child: Text(
                        'Oct. 2022',
                        style: TextStyle(
                          fontFamily: 'Pangram',
                          fontSize: 15,
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 223.0, start: 20.0),
                      Pin(size: 20.0, start: 14.0),
                      child: Text(
                        '5 nov. 2022',
                        style: TextStyle(
                          fontFamily: 'Pangram',
                          fontSize: 15,
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 259.1, end: -316.1),
                      Pin(size: 186.1, middle: 0.5713),
                      child: SvgPicture.string(
                        _svg_ugwpc1,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 259.1, end: -675.1),
                      Pin(size: 223.8, middle: 0.479),
                      child: SvgPicture.string(
                        _svg_gjv5o0,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(start: 20.0, end: 41.9),
                      Pin(size: 189.6, middle: 0.5641),
                      child: SvgPicture.string(
                        _svg_w32prf,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 1.0, end: -480.5),
                      Pin(size: 282.5, start: 46.5),
                      child: SvgPicture.string(
                        _svg_fomyw,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 1.0, end: -545.5),
                      Pin(size: 282.5, start: 46.5),
                      child: SvgPicture.string(
                        _svg_z7dtbq,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 1.0, end: -610.5),
                      Pin(size: 282.5, start: 46.5),
                      child: SvgPicture.string(
                        _svg_gyxjgs,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 28.0, end: 27.0),
            Pin(size: 206.0, end: 85.0),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 33.0, start: 0.0),
                  child: Stack(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: const Color(0xfff7f7f7),
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 20.0, end: 20.0),
                        Pin(size: 20.0, middle: 0.6154),
                        child: Text(
                          'Modifier l’horaire de recharge',
                          style: TextStyle(
                            fontFamily: 'Pangram',
                            fontSize: 15,
                            color: const Color(0xff000000),
                            letterSpacing: -0.075,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 48.0, middle: 0.3354),
                  child: Stack(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: const Color(0xfff7f7f7),
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                        margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 15.0),
                      ),
                      Pinned.fromPins(
                        Pin(start: 20.0, end: 20.0),
                        Pin(size: 40.0, end: 0.0),
                        child: Text.rich(
                          TextSpan(
                            style: TextStyle(
                              fontFamily: 'Pangram',
                              fontSize: 15,
                              color: const Color(0xff000000),
                              letterSpacing: -0.075,
                            ),
                            children: [
                              TextSpan(
                                text:
                                    'Batterie                                                      ',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              TextSpan(
                                text: '86%',
                                style: TextStyle(
                                  color: const Color(0xff0093c9),
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 47.0, middle: 0.6667),
                  child: Stack(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: const Color(0xfff7f7f7),
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                        margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 14.0),
                      ),
                      Pinned.fromPins(
                        Pin(start: 20.0, end: 20.0),
                        Pin(size: 40.0, middle: 1.0),
                        child: Text.rich(
                          TextSpan(
                            style: TextStyle(
                              fontFamily: 'Pangram',
                              fontSize: 15,
                              color: const Color(0xff000000),
                              letterSpacing: -0.075,
                            ),
                            children: [
                              TextSpan(
                                text:
                                    'Temps restant à la charge                 ',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              TextSpan(
                                text: '2h17',
                                style: TextStyle(
                                  color: const Color(0xff0093c9),
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 47.0, end: 0.0),
                  child: Stack(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: const Color(0xfff7f7f7),
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                        margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 14.0),
                      ),
                      Pinned.fromPins(
                        Pin(start: 20.0, end: 20.0),
                        Pin(size: 40.0, middle: 1.0),
                        child: Text.rich(
                          TextSpan(
                            style: TextStyle(
                              fontFamily: 'Pangram',
                              fontSize: 15,
                              color: const Color(0xff000000),
                              letterSpacing: -0.075,
                            ),
                            children: [
                              TextSpan(
                                text:
                                    'NRJ                                               ',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              TextSpan(
                                text: '\$12,58/GW',
                                style: TextStyle(
                                  color: const Color(0xff0093c9),
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 29.0, end: 27.0),
            Pin(size: 28.0, start: 50.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xfff7f7f7),
                borderRadius: BorderRadius.circular(24.0),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 107.0, start: 29.0),
            Pin(size: 28.0, start: 50.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xff0093c9),
                borderRadius: BorderRadius.circular(24.0),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 54.0, start: 56.0),
            Pin(size: 20.0, start: 54.0),
            child: Text(
              'Nissan',
              style: TextStyle(
                fontFamily: 'Pangram',
                fontSize: 15,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 43.0, middle: 0.503),
            Pin(size: 20.0, start: 54.0),
            child: Text(
              'Tesla',
              style: TextStyle(
                fontFamily: 'Pangram',
                fontSize: 15,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 53.0, end: 54.0),
            Pin(size: 20.0, start: 54.0),
            child: Text(
              'Tesla 2',
              style: TextStyle(
                fontFamily: 'Pangram',
                fontSize: 15,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
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
const String _svg_u4dz9d =
    '<svg viewBox="58.0 416.5 259.0 1.0" ><path transform="translate(58.0, 416.5)" d="M 0 0 L 259 0" fill="none" fill-opacity="0.5" stroke="#707070" stroke-width="1" stroke-opacity="0.5" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_r8sld =
    '<svg viewBox="58.0 155.5 259.0 1.0" ><path transform="translate(58.0, 155.5)" d="M 0 0 L 259 0" fill="none" fill-opacity="0.5" stroke="#707070" stroke-width="1" stroke-opacity="0.5" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_k6nm7z =
    '<svg viewBox="58.0 364.5 259.0 1.0" ><path transform="translate(58.0, 364.5)" d="M 0 0 L 259 0" fill="none" fill-opacity="0.5" stroke="#707070" stroke-width="1" stroke-opacity="0.5" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_t6onb3 =
    '<svg viewBox="58.0 260.5 259.0 1.0" ><path transform="translate(58.0, 260.5)" d="M 0 0 L 259 0" fill="none" fill-opacity="0.5" stroke="#707070" stroke-width="1" stroke-opacity="0.5" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_l4cy69 =
    '<svg viewBox="58.0 312.5 259.0 1.0" ><path transform="translate(58.0, 312.5)" d="M 0 0 L 259 0" fill="none" fill-opacity="0.5" stroke="#707070" stroke-width="1" stroke-opacity="0.5" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_gytnwf =
    '<svg viewBox="58.0 207.5 259.0 1.0" ><path transform="translate(58.0, 207.5)" d="M 0 0 L 259 0" fill="none" fill-opacity="0.5" stroke="#707070" stroke-width="1" stroke-opacity="0.5" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_yrurxy =
    '<svg viewBox="58.0 156.5 1.0 281.5" ><path transform="translate(58.0, 156.5)" d="M 0 281.4978637695312 L 0 0" fill="none" fill-opacity="0.5" stroke="#707070" stroke-width="1" stroke-opacity="0.5" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_z7u6t =
    '<svg viewBox="132.0 156.5 1.0 281.5" ><path transform="translate(132.0, 156.5)" d="M 0 281.4978637695312 L 0 0" fill="none" fill-opacity="0.5" stroke="#707070" stroke-width="1" stroke-opacity="0.5" stroke-dasharray="1 1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_tvud91 =
    '<svg viewBox="206.0 156.5 1.0 281.5" ><path transform="translate(206.0, 156.5)" d="M 0 281.4978637695312 L 0 0" fill="none" fill-opacity="0.5" stroke="#707070" stroke-width="1" stroke-opacity="0.5" stroke-dasharray="1 1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_nrbnkr =
    '<svg viewBox="95.0 156.5 1.0 281.5" ><path transform="translate(95.0, 156.5)" d="M 0 281.4978637695312 L 0 0" fill="none" fill-opacity="0.5" stroke="#707070" stroke-width="1" stroke-opacity="0.5" stroke-dasharray="1 1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_cyk9yj =
    '<svg viewBox="169.0 156.5 1.0 281.5" ><path transform="translate(169.0, 156.5)" d="M 0 281.4978637695312 L 0 0" fill="none" fill-opacity="0.5" stroke="#707070" stroke-width="1" stroke-opacity="0.5" stroke-dasharray="1 1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_l0zaj =
    '<svg viewBox="243.0 156.5 1.0 281.5" ><path transform="translate(243.0, 156.5)" d="M 0 281.4978637695312 L 0 0" fill="none" fill-opacity="0.5" stroke="#707070" stroke-width="1" stroke-opacity="0.5" stroke-dasharray="1 1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_nz7q51 =
    '<svg viewBox="280.0 156.5 1.0 281.5" ><path transform="translate(280.0, 156.5)" d="M 0 281.4978637695312 L 0 0" fill="none" fill-opacity="0.5" stroke="#707070" stroke-width="1" stroke-opacity="0.5" stroke-dasharray="1 1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_n50dk =
    '<svg viewBox="317.0 156.5 1.0 281.5" ><path transform="translate(317.0, 156.5)" d="M 0 281.4978637695312 L 0 0" fill="none" fill-opacity="0.5" stroke="#707070" stroke-width="1" stroke-opacity="0.5" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_wjt7c9 =
    '<svg viewBox="95.0 156.5 1.0 1.0" ><path transform="translate(95.0, 156.5)" d="M 0 0" fill="none" fill-opacity="0.5" stroke="#707070" stroke-width="1" stroke-opacity="0.5" stroke-dasharray="1 1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_acdnjj =
    '<svg viewBox="67.0 156.5 1.0 281.5" ><path transform="translate(67.0, 156.5)" d="M 0 281.4978637695312 L 0 0" fill="none" fill-opacity="0.5" stroke="#707070" stroke-width="1" stroke-opacity="0.5" stroke-dasharray="1 1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_nsyekx =
    '<svg viewBox="78.0 155.5 1.0 281.5" ><path transform="translate(78.0, 155.5)" d="M 0 281.4978637695312 L 0 0" fill="none" fill-opacity="0.5" stroke="#707070" stroke-width="1" stroke-opacity="0.5" stroke-dasharray="1 1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_y8z2on =
    '<svg viewBox="122.0 155.5 1.0 281.5" ><path transform="translate(122.0, 155.5)" d="M 0 281.4978637695312 L 0 0" fill="none" fill-opacity="0.5" stroke="#707070" stroke-width="1" stroke-opacity="0.5" stroke-dasharray="1 1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_w32x7t =
    '<svg viewBox="166.0 155.5 1.0 281.5" ><path transform="translate(166.0, 155.5)" d="M 0 281.4978637695312 L 0 0" fill="none" fill-opacity="0.5" stroke="#707070" stroke-width="1" stroke-opacity="0.5" stroke-dasharray="1 1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ue5w7r =
    '<svg viewBox="210.0 155.5 1.0 281.5" ><path transform="translate(210.0, 155.5)" d="M 0 281.4978637695312 L 0 0" fill="none" fill-opacity="0.5" stroke="#707070" stroke-width="1" stroke-opacity="0.5" stroke-dasharray="1 1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_z37yaf =
    '<svg viewBox="254.0 155.5 1.0 281.5" ><path transform="translate(254.0, 155.5)" d="M 0 281.4978637695312 L 0 0" fill="none" fill-opacity="0.5" stroke="#707070" stroke-width="1" stroke-opacity="0.5" stroke-dasharray="1 1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_m3zc9 =
    '<svg viewBox="100.0 155.5 1.0 281.5" ><path transform="translate(100.0, 155.5)" d="M 0 281.4978637695312 L 0 0" fill="none" fill-opacity="0.5" stroke="#707070" stroke-width="1" stroke-opacity="0.5" stroke-dasharray="1 1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_y2qf =
    '<svg viewBox="144.0 155.5 1.0 281.5" ><path transform="translate(144.0, 155.5)" d="M 0 281.4978637695312 L 0 0" fill="none" fill-opacity="0.5" stroke="#707070" stroke-width="1" stroke-opacity="0.5" stroke-dasharray="1 1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_s04t3 =
    '<svg viewBox="188.0 155.5 1.0 281.5" ><path transform="translate(188.0, 155.5)" d="M 0 281.4978637695312 L 0 0" fill="none" fill-opacity="0.5" stroke="#707070" stroke-width="1" stroke-opacity="0.5" stroke-dasharray="1 1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_rv3qh =
    '<svg viewBox="232.0 155.5 1.0 281.5" ><path transform="translate(232.0, 155.5)" d="M 0 281.4978637695312 L 0 0" fill="none" fill-opacity="0.5" stroke="#707070" stroke-width="1" stroke-opacity="0.5" stroke-dasharray="1 1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_x6yc7 =
    '<svg viewBox="276.0 155.5 1.0 281.5" ><path transform="translate(276.0, 155.5)" d="M 0 281.4978637695312 L 0 0" fill="none" fill-opacity="0.5" stroke="#707070" stroke-width="1" stroke-opacity="0.5" stroke-dasharray="1 1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_oddusv =
    '<svg viewBox="89.0 155.5 1.0 281.5" ><path transform="translate(89.0, 155.5)" d="M 0 281.4978637695312 L 0 0" fill="none" fill-opacity="0.5" stroke="#707070" stroke-width="1" stroke-opacity="0.5" stroke-dasharray="1 1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_hnykpj =
    '<svg viewBox="133.0 155.5 1.0 281.5" ><path transform="translate(133.0, 155.5)" d="M 0 281.4978637695312 L 0 0" fill="none" fill-opacity="0.5" stroke="#707070" stroke-width="1" stroke-opacity="0.5" stroke-dasharray="1 1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_md0ms7 =
    '<svg viewBox="177.0 155.5 1.0 281.5" ><path transform="translate(177.0, 155.5)" d="M 0 281.4978637695312 L 0 0" fill="none" fill-opacity="0.5" stroke="#707070" stroke-width="1" stroke-opacity="0.5" stroke-dasharray="1 1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_dt5e8n =
    '<svg viewBox="221.0 155.5 1.0 281.5" ><path transform="translate(221.0, 155.5)" d="M 0 281.4978637695312 L 0 0" fill="none" fill-opacity="0.5" stroke="#707070" stroke-width="1" stroke-opacity="0.5" stroke-dasharray="1 1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ii7gbb =
    '<svg viewBox="265.0 155.5 1.0 281.5" ><path transform="translate(265.0, 155.5)" d="M 0 281.4978637695312 L 0 0" fill="none" fill-opacity="0.5" stroke="#707070" stroke-width="1" stroke-opacity="0.5" stroke-dasharray="1 1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_k74hbd =
    '<svg viewBox="111.0 155.5 1.0 281.5" ><path transform="translate(111.0, 155.5)" d="M 0 281.4978637695312 L 0 0" fill="none" fill-opacity="0.5" stroke="#707070" stroke-width="1" stroke-opacity="0.5" stroke-dasharray="1 1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_fi2f8p =
    '<svg viewBox="155.0 155.5 1.0 281.5" ><path transform="translate(155.0, 155.5)" d="M 0 281.4978637695312 L 0 0" fill="none" fill-opacity="0.5" stroke="#707070" stroke-width="1" stroke-opacity="0.5" stroke-dasharray="1 1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_at0d61 =
    '<svg viewBox="199.0 155.5 1.0 281.5" ><path transform="translate(199.0, 155.5)" d="M 0 281.4978637695312 L 0 0" fill="none" fill-opacity="0.5" stroke="#707070" stroke-width="1" stroke-opacity="0.5" stroke-dasharray="1 1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_jcvlpl =
    '<svg viewBox="243.0 155.5 1.0 281.5" ><path transform="translate(243.0, 155.5)" d="M 0 281.4978637695312 L 0 0" fill="none" fill-opacity="0.5" stroke="#707070" stroke-width="1" stroke-opacity="0.5" stroke-dasharray="1 1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_entjmx =
    '<svg viewBox="287.0 155.5 1.0 281.5" ><path transform="translate(287.0, 155.5)" d="M 0 281.4978637695312 L 0 0" fill="none" fill-opacity="0.5" stroke="#707070" stroke-width="1" stroke-opacity="0.5" stroke-dasharray="1 1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_v8u1m1 =
    '<svg viewBox="298.0 155.5 1.0 281.5" ><path transform="translate(298.0, 155.5)" d="M 0 281.4978637695312 L 0 0" fill="none" fill-opacity="0.5" stroke="#707070" stroke-width="1" stroke-opacity="0.5" stroke-dasharray="1 1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_xhfg5z =
    '<svg viewBox="309.0 155.5 1.0 281.5" ><path transform="translate(309.0, 155.5)" d="M 0 281.4978637695312 L 0 0" fill="none" fill-opacity="0.5" stroke="#707070" stroke-width="1" stroke-opacity="0.5" stroke-dasharray="1 1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_qwv6uh =
    '<svg viewBox="824.0 438.0 1.0 3.4" ><path transform="translate(824.0, 424.0)" d="M 0 14 C 0 14 0 21.73198699951172 0 14 Z" fill="#0093c9" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ugwpc1 =
    '<svg viewBox="378.0 174.6 259.1 186.1" ><defs><linearGradient id="gradient" x1="0.5" y1="0.325195" x2="0.5" y2="0.923739"><stop offset="0.0" stop-color="#0093c9" stop-opacity="0.31"/><stop offset="1.0" stop-color="#98e3ff" stop-opacity="0.31"/></linearGradient></defs><path transform="translate(-290.0, -377.0)" d="M 668 662.2410888671875 C 668 662.2410888671875 692.9910278320312 649.1205444335938 707.7222900390625 623.2495727539062 C 722.4535522460938 597.3786010742188 735.7015380859375 551.2891845703125 756.7069091796875 551.644287109375 C 777.7122802734375 551.9993896484375 795.0047607421875 593.5827026367188 820.443359375 601.9940795898438 C 845.8819580078125 610.4054565429688 849.7714233398438 654.9523315429688 867.5609741210938 658.0947875976562 C 885.3505249023438 661.2372436523438 882.1140747070312 605.0454711914062 900.2588500976562 592.7672729492188 C 918.4036254882812 580.4890747070312 927.0955810546875 581.3960571289062 927.0955810546875 581.3960571289062 C 927.095458984375 581.3960571289062 927.0955810546875 737.7365112304688 927.0955810546875 737.7365112304688 L 668 737.7365112304688 L 668 662.2410888671875 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_gjv5o0 =
    '<svg viewBox="737.0 136.9 259.1 223.8" ><defs><linearGradient id="gradient" x1="0.5" y1="0.325195" x2="0.5" y2="0.923739"><stop offset="0.0" stop-color="#0093c9" stop-opacity="0.31"/><stop offset="1.0" stop-color="#98e3ff" stop-opacity="0.31"/></linearGradient></defs><path transform="translate(69.0, -377.0)" d="M 668 662.2410888671875 C 668 662.2410888671875 692.9910278320312 649.1205444335938 707.7222900390625 623.2495727539062 C 722.4535522460938 597.3786010742188 758.2923583984375 633.6873168945312 779.2977294921875 634.0424194335938 C 800.3031005859375 634.3975219726562 796.5228271484375 678.1177368164062 821.96142578125 686.5291137695312 C 847.4000244140625 694.9404907226562 849.7714233398438 654.9523315429688 867.5609741210938 658.0947875976562 C 885.3505249023438 661.2372436523438 882.1140747070312 605.0454711914062 900.2588500976562 592.7672729492188 C 918.4036254882812 580.4890747070312 927.0955810546875 513.9050903320312 927.0955810546875 513.9050903320312 C 927.095458984375 513.9050903320312 927.0955810546875 737.7365112304688 927.0955810546875 737.7365112304688 L 668 737.7365112304688 L 668 662.2410888671875 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_w32prf =
    '<svg viewBox="20.0 171.1 259.1 189.6" ><defs><linearGradient id="gradient" x1="0.5" y1="0.325195" x2="0.5" y2="0.923739"><stop offset="0.0" stop-color="#0093c9" stop-opacity="0.31"/><stop offset="1.0" stop-color="#98e3ff" stop-opacity="0.31"/></linearGradient></defs><path transform="translate(-648.0, -377.0)" d="M 668 662.2410888671875 C 668 662.2410888671875 676.783935546875 577.5152587890625 691.5152587890625 551.644287109375 C 706.2464599609375 525.7733154296875 738.7328491210938 650.5594482421875 759.7382202148438 650.91455078125 C 780.7435913085938 651.2696533203125 791.2395629882812 689.4986572265625 816.6781616210938 697.9100341796875 C 842.1167602539062 706.3214111328125 849.7714233398438 654.9523315429688 867.5609741210938 658.0947875976562 C 885.3505249023438 661.2372436523438 882.1140747070312 605.0454711914062 900.2588500976562 592.7672729492188 C 918.4036254882812 580.4890747070312 927.0955810546875 645.7555541992188 927.0955810546875 645.7555541992188 C 927.095458984375 645.7555541992188 927.0955810546875 737.7365112304688 927.0955810546875 737.7365112304688 L 668 737.7365112304688 L 668 662.2410888671875 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_fomyw =
    '<svg viewBox="800.5 99.5 1.0 282.5" ><path transform="translate(800.5, 99.5)" d="M 0 282.4978637695312 L 0 0" fill="none" fill-opacity="0.5" stroke="#707070" stroke-width="1" stroke-opacity="0.5" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_z7dtbq =
    '<svg viewBox="865.5 99.5 1.0 282.5" ><path transform="translate(865.5, 99.5)" d="M 0 282.4978637695312 L 0 0" fill="none" fill-opacity="0.5" stroke="#707070" stroke-width="1" stroke-opacity="0.5" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_gyxjgs =
    '<svg viewBox="930.5 99.5 1.0 282.5" ><path transform="translate(930.5, 99.5)" d="M 0 282.4978637695312 L 0 0" fill="none" fill-opacity="0.5" stroke="#707070" stroke-width="1" stroke-opacity="0.5" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
