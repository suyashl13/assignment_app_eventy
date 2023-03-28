import 'package:assignment_app_eventy/model/kevent.dart';
import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:intl/intl.dart';

class EventLabels extends StatelessWidget {
  final KEvent kEvent;
  const EventLabels({super.key, required this.kEvent});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 21, horizontal: 12),
      child: Column(
        children: [
          ListTile(
            horizontalTitleGap: 14,
            leading: Image.network(kEvent.organiserIcon),
            title: Text(
              kEvent.organiserName,
              style: const TextStyle(fontSize: 15),
            ),
            subtitle: const Text(
              "Organizer",
              style: TextStyle(fontSize: 12),
            ),
          ),
          const SizedBox(height: 12),
          ListTile(
            horizontalTitleGap: 14,
            leading: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(86, 105, 255, 0.4),
                  borderRadius: BorderRadius.circular(14)),
              child: const HeroIcon(
                HeroIcons.calendar,
                color: Color.fromRGBO(86, 105, 255, 1),
                style: HeroIconStyle.solid,
              ),
            ),
            title: Text(
              DateFormat.yMMMMd().format(kEvent.dateTime),
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            ),
            subtitle: Text(
              "${DateFormat.EEEE().format(kEvent.dateTime)}, ${DateFormat.jm().format(kEvent.dateTime)}",
              style: const TextStyle(fontSize: 12),
            ),
          ),
          const SizedBox(height: 12),
          ListTile(
            horizontalTitleGap: 14,
            leading: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(86, 105, 255, 0.4),
                  borderRadius: BorderRadius.circular(14)),
              child: const HeroIcon(
                HeroIcons.mapPin,
                color: Color.fromRGBO(86, 105, 255, 1),
                style: HeroIconStyle.solid,
              ),
            ),
            title: Text(
              kEvent.venueName,
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            ),
            subtitle: Text(
              "${kEvent.venueCity}, ${kEvent.venueCountry}",
              style: const TextStyle(fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}
