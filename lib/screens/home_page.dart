import 'package:assignment_app_eventy/components/home_event_card.dart';
import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color.fromARGB(253, 255, 255, 255),
      appBar: AppBar(
        toolbarHeight: 68,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const HeroIcon(
                HeroIcons.magnifyingGlass,
                style: HeroIconStyle.solid,
              )),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.more_vert, size: 26))
        ],
        elevation: 0,
        foregroundColor: const Color.fromRGBO(18, 13, 38, 1),
        backgroundColor: Colors.transparent,
        title: const Text("Events",
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500)),
      ),
      body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          children: [
            HomeEventCard(
                cardImage: const AssetImage('assets/images/event_1.jpg'),
                eventTime: DateTime.now(),
                eventTitle: "Jo Malone London’s\nMother’s Day Presents",
                eventLocation: "Radius Gallery  \u2022  Santa Cruz, CA"),
            HomeEventCard(
                cardImage: const AssetImage('assets/images/event_1.jpg'),
                eventTime: DateTime.now(),
                eventTitle: "Women's Leadership Conference 2021",
                eventLocation: "Radius Gallery  \u2022  Santa Cruz, CA"),
            HomeEventCard(
                cardImage: const AssetImage('assets/images/event_1.jpg'),
                eventTime: DateTime.now(),
                eventTitle: "International Kids Safe Parents Night Out",
                eventLocation: "Radius Gallery  \u2022  Santa Cruz, CA"),
            HomeEventCard(
                cardImage: const AssetImage('assets/images/event_1.jpg'),
                eventTime: DateTime.now(),
                eventTitle: "Collectivity Plays the Music of Jimi ",
                eventLocation: "Radius Gallery  \u2022  Santa Cruz, CA"),
            HomeEventCard(
                cardImage: const AssetImage('assets/images/event_1.jpg'),
                eventTime: DateTime.now(),
                eventTitle: "Jo Malone London’s\nMother’s Day Presents",
                eventLocation: "Radius Gallery  \u2022  Santa Cruz, CA"),
            HomeEventCard(
                cardImage: const AssetImage('assets/images/event_1.jpg'),
                eventTime: DateTime.now(),
                eventTitle: "International Gala Music Festival",
                eventLocation: "Radius Gallery  \u2022  Santa Cruz, CA"),
            HomeEventCard(
                cardImage: const AssetImage('assets/images/event_1.jpg'),
                eventTime: DateTime.now(),
                eventTitle: "Jo Malone London’s\nMother’s Day Presents",
                eventLocation: "Radius Gallery  \u2022  Santa Cruz, CA"),
          ]),
    );
  }
}
