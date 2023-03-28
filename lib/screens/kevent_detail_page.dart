import 'package:assignment_app_eventy/components/event_label.dart';
import 'package:assignment_app_eventy/model/kevent.dart';
import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';

class KEventDetailPage extends StatelessWidget {
  final KEvent kEvent;
  const KEventDetailPage({super.key, required this.kEvent});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(244),
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(kEvent.title),
          flexibleSpace: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(kEvent.bannerImage),
                      fit: BoxFit.fill))),
        ),
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: (MediaQuery.of(context).size.width / 6)),
        child: TextButton(
          style: ButtonStyle(
              padding:
                  MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
              backgroundColor: MaterialStateProperty.all<Color>(
                  const Color.fromRGBO(86, 105, 255, 1)),
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ))),
          onPressed: () {},
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            const SizedBox(
              width: 24,
            ),
            const Text("BOOK NOW"),
            Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(61, 86, 240, 1),
                  borderRadius: BorderRadius.circular(20)),
              child: const HeroIcon(
                HeroIcons.arrowRight,
                size: 16,
              ),
            )
          ]),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 21, left: 24, right: 24),
            child: Text(
              kEvent.title,
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 35,
              ),
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  EventLabels(kEvent: kEvent),
                  const Text("About Event",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                  const SizedBox(height: 12),
                  Text(kEvent.description,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w400))
                ],
              ),
            ),
          )),
          SizedBox(
            height: MediaQuery.of(context).size.height / 12,
          )
        ],
      ),
    );
  }
}
