import 'dart:convert';

import 'package:assignment_app_eventy/model/kevent.dart';
import 'package:http/http.dart' as http;

class KEventHelper {
  static Future<List<KEvent>> fetchAllKEvents() async {
    http.Response response = await http.get(Uri.parse(
        "https://sde-007.api.assignment.theinternetfolks.works/v1/event"));

    if (response.statusCode != 200) throw "Could not fetch upcomming events.";

    List kEventJsonArray = jsonDecode(response.body)['content']['data'];
    List<KEvent> kEventList =
        kEventJsonArray.map((e) => KEvent.fromJSON(e)).toList();

    return kEventList;
  }

  static Future<List<KEvent>> searchKEvents(String searchQuery) async {
    http.Response response = await http.get(Uri.parse(
        "https://sde-007.api.assignment.theinternetfolks.works/v1/event?search=${searchQuery}"));

    if (response.statusCode != 200) throw "Could not fetch upcomming events.";

    List kEventJsonArray = jsonDecode(response.body)['content']['data'];
    List<KEvent> kEventList =
        kEventJsonArray.map((e) => KEvent.fromJSON(e)).toList();

    return kEventList;
  }
}
