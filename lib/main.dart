import 'package:fajaralhijr_github_io/locale/locale.g.dart';
import 'package:fajaralhijr_github_io/views/desktop/desktop_body.dart';
import 'package:fajaralhijr_github_io/views/mobile/mobile_body.dart';
import 'package:fajaralhijr_github_io/views/tablet/tablet_body.dart';
import 'package:fajaralhijr_github_io/widgets/responsive_layout.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:url_strategy/url_strategy.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized;
  await initializeDateFormatting("en");
  setPathUrlStrategy();
  runApp(TranslationProvider(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fajar Muhammad Al-Hijri | Software Engineer',
      theme: ThemeData(
        fontFamily: GoogleFonts.montserrat().fontFamily,
        brightness: Brightness.dark,
        useMaterial3: true,
      ),
      home: const ResponsiveLayout(
        tabletBody: TabletBody(),
        desktopBody: DesktopBody(),
        mobileBody: MobileBody(),
      ),
    );
  }
}
