import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roarx_chat/constants.dart';
import 'package:roarx_chat/pages/main_body.dart';

void main() => runApp(const RxChat());

class RxChat extends StatelessWidget {
  const RxChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appName,
      theme: ThemeData(
          // ? for dark theme
          brightness: Brightness.dark,
          // ? Scaffold color fixed
          scaffoldBackgroundColor: scaffoldBgColor,
          // ? appBar theme for saving time
          appBarTheme: AppBarTheme(
            centerTitle: true,
            iconTheme: const IconThemeData(color: Colors.white),
            titleTextStyle: const TextStyle(color: Colors.white),
            elevation: 0.0,
            backgroundColor:
                scaffoldBgColor, // saving the transprency while scrolling listview(s)
          ),
          // ? Custom font family
          fontFamily: GoogleFonts.nunitoSans().fontFamily),
      home: const Main(),
    );
  }
}
