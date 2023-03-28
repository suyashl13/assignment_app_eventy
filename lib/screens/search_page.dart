import 'package:assignment_app_eventy/components/search_event_card.dart';
import 'package:assignment_app_eventy/helpers/kevent_helper.dart';
import 'package:assignment_app_eventy/model/kevent.dart';
import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  bool isLoading = false;
  List<KEvent> kEventList = [];

  _searchEvent(String queryString) async {
    setState(() {
      isLoading = true;
    });

    try {
      List<KEvent> myKEventList = await KEventHelper.searchKEvents(queryString);
      setState(() {
        kEventList = myKEventList;
      });
    } catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text("Something went wrong")));
    }

    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 68,
        elevation: 0,
        foregroundColor: const Color.fromRGBO(18, 13, 38, 1),
        backgroundColor: Colors.transparent,
        title: const Text("Search",
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              child: TextFormField(
                onChanged: (String searchString) async {
                  _searchEvent(searchString);
                },
                decoration: const InputDecoration(
                    hintText: "Type Event Name",
                    border: InputBorder.none,
                    prefixIcon: HeroIcon(HeroIcons.magnifyingGlass)),
              ),
            ),
            const SizedBox(height: 12),
            Expanded(
                child: isLoading
                    ? const Center(child: CircularProgressIndicator())
                    : ListView.builder(
                        itemCount: kEventList.length,
                        itemBuilder: (context, index) =>
                            SearchEventCard(kEvent: kEventList[index]),
                      ))
          ],
        ),
      ),
    );
  }
}
