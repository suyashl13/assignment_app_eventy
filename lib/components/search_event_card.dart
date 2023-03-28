import 'package:assignment_app_eventy/model/kevent.dart';
import 'package:assignment_app_eventy/screens/kevent_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SearchEventCard extends StatelessWidget {
  final KEvent kEvent;
  const SearchEventCard({super.key, required this.kEvent});

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
        height: MediaQuery.of(context).size.height / 10,
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
                width: ((MediaQuery.of(context).size.height / 10) - 14),
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                          "${DateFormat.MMMEd().format(kEvent.dateTime)} \u2022 ${DateFormat.jm().format(kEvent.dateTime)}",
                          style: const TextStyle(
                              fontSize: 13,
                              color: Color.fromRGBO(86, 105, 255, 1))),
                      Text(kEvent.title,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              fontSize: 18,
                              color: Color.fromRGBO(18, 13, 38, 1))),
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
