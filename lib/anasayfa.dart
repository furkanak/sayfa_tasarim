// ignore_for_file: must_be_immutable, unnecessary_import, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/renkler.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    var ekranbilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranbilgisi.size.height;
    final double ekranGenisligi = ekranbilgisi.size.width;
    print("Ekran Yüksekliği: $ekranYuksekligi");
    print("Ekran Genişliği : $ekranGenisligi");
    var d = AppLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "FuMe Burger",
          style: TextStyle(
              color: yaziRenk1,
              fontFamily: "Jaro",
              fontSize: ekranGenisligi / 15),
        ),
        backgroundColor: anaRenk,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: ekranYuksekligi / 30),
            child: Text(
              d!.burgerBaslik,
              style: TextStyle(
                  fontSize: 36, color: burgerYazi, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: ekranGenisligi / 20),
            child: Image.asset("resimler/hamburger.png"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Chip(icerik: d.soganYazi),
              Chip(icerik: d.domatesYazi),
              Chip(icerik: d.biberYazi),
              Chip(icerik: d.tursuYazi),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(22),
            child: Column(
              children: [
                Container(
                  width: 250,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [anaRenk, burgerYazi],
                        begin: Alignment.topRight,
                        end: Alignment.topLeft,
                        stops: const [0.4, 0.8],
                      ),
                      border: Border.all(
                          color: Colors.black,
                          width: 5.0,
                          style: BorderStyle.solid),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black,
                            offset: Offset(5, 5),
                            blurRadius: 15,
                            spreadRadius: 3)
                      ]),
                  child: Text(
                    d.teslimatSure,
                    style: TextStyle(
                        fontSize: 36,
                        color: yaziRenk1,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(ekranGenisligi / 20),
                  child: Text(
                    d.teslimatBaslik,
                    style: TextStyle(
                        fontSize: 26,
                        color: burgerYazi,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  d.burgerAciklama,
                  style: TextStyle(
                    fontSize: 20,
                    color: anaRenk,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  d.fiyat,
                  style: TextStyle(
                      fontFamily: "Jaro",
                      fontSize: 40,
                      fontWeight: FontWeight.w700,
                      color: burgerYazi),
                ),
                SizedBox(
                  height: 50,
                  width: ekranGenisligi / 2,
                  child: FloatingActionButton(
                      backgroundColor: burgerYazi,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: Text(
                        d.sepetYazi,
                        style: TextStyle(
                          fontSize: 18,
                          color: yaziRenk1,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      onPressed: () {}),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Chip extends StatelessWidget {

  String icerik;
  Chip({super.key, required this.icerik});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 82,
      child: FloatingActionButton(
          backgroundColor: burgerYazi,
          child: Text(
            icerik,
            style: TextStyle(fontSize: 18, color: yaziRenk1),
            textAlign: TextAlign.center,
          ),
          onPressed: () {}),
    );
  }
}
