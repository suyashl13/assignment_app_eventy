import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:heroicons/heroicons.dart';

class NoInternetPage extends StatelessWidget {
  const NoInternetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(61, 86, 240, 0.4),
                    borderRadius: BorderRadius.circular(50)),
                child: const HeroIcon(
                  HeroIcons.exclamationTriangle,
                  size: 58,
                  color: Color.fromRGBO(61, 86, 240, 1),
                ),
              ),
              const Text(
                "\nNot connected to internet, \nPlease connect and try again.",
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
