class Statistics {
  final String id;
  final String value;
  final String name;
  final String images;

  const Statistics({
    required this.id,
    required this.value,
    required this.name,
    required this.images,
  });

  factory Statistics.fromJson(Map<String, dynamic> json) {
    return Statistics(
      id: json['id'],
      value: json['value'],
      name: json['name'],
      images: json['images'],
    );
  }
}
