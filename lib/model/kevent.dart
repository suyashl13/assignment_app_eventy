class KEvent {
  final int id;
  final String title;
  final String description;
  final String bannerImage;
  final DateTime dateTime;
  final String organiserName;
  final String organiserIcon;
  final String venueName;
  final String venueCity;
  final String venueCountry;

  const KEvent(
      {required this.id,
      required this.title,
      required this.description,
      required this.bannerImage,
      required this.dateTime,
      required this.organiserName,
      required this.organiserIcon,
      required this.venueName,
      required this.venueCity,
      required this.venueCountry});

  factory KEvent.fromJSON(Map<String, dynamic> eventData) => KEvent(
      id: eventData['id'],
      title: eventData['title'],
      description: eventData['description'],
      bannerImage: eventData['banner_image'],
      dateTime: DateTime.parse(eventData['date_time']),
      organiserName: eventData['organiser_name'],
      organiserIcon: eventData['organiser_icon'],
      venueName: eventData['venue_name'],
      venueCity: eventData['venue_city'],
      venueCountry: eventData['venue_country']);

}
