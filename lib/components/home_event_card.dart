import 'package:assignment_app_eventy/model/kevent.dart';
import 'package:assignment_app_eventy/screens/kevent_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:intl/intl.dart';

class HomeEventCard extends StatelessWidget {
  final KEvent kEvent;

  const HomeEventCard({
    super.key,
    required this.kEvent,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (_) => KEventDetailPage(kEvent: kEvent)));
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 8),
        height: MediaQuery.of(context).size.height / 8,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 4),
          child: Row(
            children: [
              Container(
                height: ((MediaQuery.of(context).size.height / 8) - 10),
                width: ((MediaQuery.of(context).size.height / 8) - 14),
                margin: const EdgeInsets.symmetric(vertical: 4),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(kEvent.organiserIcon),
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(12)),
              ),
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              "${DateFormat.MMMEd().format(kEvent.dateTime)} \u2022 ${DateFormat.jm().format(kEvent.dateTime)}",
                              style: const TextStyle(
                                  fontSize: 13,
                                  color: Color.fromRGBO(86, 105, 255, 1))),
                          Text(kEvent.title,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                  fontSize: 15,
                                  color: Color.fromRGBO(18, 13, 38, 1))),
                        ],
                      ),
                      Row(
                        children: [
                          const HeroIcon(HeroIcons.mapPin,
                              style: HeroIconStyle.solid,
                              size: 15,
                              color: Color.fromRGBO(116, 118, 136, 1)),
                          Expanded(
                            child: Text(
                                " ${kEvent.venueName} \u2022 ${kEvent.venueCity}, ${kEvent.venueCountry}",
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: Color.fromRGBO(116, 118, 136, 1))),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
