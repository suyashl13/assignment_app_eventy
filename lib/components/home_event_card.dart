import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:intl/intl.dart';

class HomeEventCard extends StatelessWidget {
  final AssetImage cardImage;
  final DateTime eventTime;
  final String eventTitle;
  final String eventLocation;

  const HomeEventCard(
      {super.key,
      required this.cardImage,
      required this.eventTime,
      required this.eventTitle,
      required this.eventLocation});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  image: DecorationImage(image: cardImage, fit: BoxFit.fill),
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
                            "${DateFormat.MMMEd().format(eventTime)} \u2022 ${DateFormat.jm().format(eventTime)}",
                            style: const TextStyle(
                                fontSize: 13,
                                color: Color.fromRGBO(86, 105, 255, 1))),
                        Text(eventTitle,
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
                        Text(" $eventLocation",
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                                fontSize: 12,
                                color: Color.fromRGBO(116, 118, 136, 1))),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
