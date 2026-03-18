class NominatimPlace {
  final String displayName;
  final double lat;
  final double lng;

  const NominatimPlace({
    required this.displayName,
    required this.lat,
    required this.lng,
  });

  factory NominatimPlace.fromJson(Map<String, dynamic> json) {
    return NominatimPlace(
      displayName: json['display_name'] as String,
      lat: double.parse(json['lat'] as String),
      lng: double.parse(json['lon'] as String),
    );
  }

  String get shortName {
    final parts = displayName.split(',');
    return parts.take(2).join(',').trim();
  }
}
