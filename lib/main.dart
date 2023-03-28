import 'package:assignment_app_eventy/screens/home_page.dart';
import 'package:assignment_app_eventy/screens/no_internet_page.dart';
import 'package:flutter/material.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Assignment Application',
        theme: ThemeData(
          fontFamily: 'Inter',
          primarySwatch: Colors.blue,
        ),
        home: StreamBuilder(
          stream: Connectivity().checkConnectivity().asStream(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return snapshot.data == ConnectivityResult.mobile ||
                      snapshot.data == ConnectivityResult.wifi
                  ? const HomePage()
                  : const NoInternetPage();
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ));
  }
}
