import 'package:deteksi_mandiri/deteksi_mandiri.dart';
import 'package:flutter/material.dart';
import 'package:happy_notes/happy_notes.dart';
import 'package:temenin_isoman_mobileapp/screens/home_screen.dart';
import 'package:temenin_isoman_mobileapp/screens/login_screen.dart';
import 'package:tips_and_tricks/common/styles.dart';
import 'package:tips_and_tricks/main.dart';
import 'package:bed_capacity/main.dart';
import 'package:obat/obat.dart';

void main() {
  runApp(const TemeninIsomanApp());
}

class TemeninIsomanApp extends StatelessWidget {
  const TemeninIsomanApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Temenin Isoman',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: primaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomeScreen(),
      routes: {
        // Main routes
        // HomeScreen.routeName: (context) => const HomeScreen(),
        LoginScreen.routeName: (context) => const LoginScreen(),

        // TO DO: (add your module routes here)

        // Tips and Tricks routes
        TipsAndTricksListPage.routeName: (context) =>
            const TipsAndTricksListPage(),
        ArticleDetailPage.routeName: (context) => ArticleDetailPage(
              article: ModalRoute.of(context)?.settings.arguments as Article,
            ),
        ArticleWebView.routeName: (context) => ArticleWebView(
              url: ModalRoute.of(context)?.settings.arguments as String,
            ),
        AddArticlePage.routeName: (context) => const AddArticlePage(),

        // Happy Notes routes
        NotesPage.routeName: (context) => const NotesPage(),

        // bed capacity routes
        AreaList.routeName: (context) => const AreaList(),
        HospitalList.routeName: (context) => HospitalList(
              area: ModalRoute.of(context)?.settings.arguments as Area,
            ),
        BedRequestForm.routeName: (context) => BedRequestForm(
              hospital: ModalRoute.of(context)?.settings.arguments as Hospital,
            ),
        BedRequestConfirmationPage.routeName: (context) =>
            const BedRequestConfirmationPage(),

        //Deteksi Mandiri routes
        DeteksiMandiri.routeName: (context) => const DeteksiMandiri(),
        ObatsPage.routeName: (context) => const ObatsPage(),
      },
    );
  }
}
