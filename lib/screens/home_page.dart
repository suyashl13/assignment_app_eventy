import 'package:assignment_app_eventy/components/home_event_card.dart';
import 'package:assignment_app_eventy/helpers/kevent_helper.dart';
import 'package:assignment_app_eventy/screens/search_page.dart';
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
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => SearchPage()));
              },
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
      body: StreamBuilder(
        stream: KEventHelper.fetchAllKEvents().asStream(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) =>
                    HomeEventCard(kEvent: snapshot.data![index]));
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
