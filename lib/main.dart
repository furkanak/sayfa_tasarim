import 'package:flutter/material.dart';
import 'package:flutter_application_1/anasayfa.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart'; //! Burada dil paketi için import ettik(manuel)

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      localizationsDelegates: const[
        AppLocalizations.delegate, //! Burada dil tanımlaması dosyalarını çağırdık
        GlobalWidgetsLocalizations.delegate,//! Burada dil tanımlaması dosyalarını çağırdık
        GlobalMaterialLocalizations.delegate,//! Burada dil tanımlaması dosyalarını çağırdık
        GlobalCupertinoLocalizations.delegate//! Burada dil tanımlaması dosyalarını çağırdık
      ],
      supportedLocales: const[
        Locale("en",""), //! Dil tanımlamasını yaptık.
        Locale("tr",""), //! Dil tanımlamasını yaptık.
      ],
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Anasayfa(),
    );
  }
}

