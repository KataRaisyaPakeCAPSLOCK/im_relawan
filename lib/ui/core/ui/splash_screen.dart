import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:im_relawan/ui/bencana/widgets/daftar_bencana_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        CupertinoPageRoute(builder: (context) => DaftarBencanaScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 200,
          width: 200,
          child: Image.asset('assets/images/logo_red.png'),
        ),
      ),
    );
  }
}
