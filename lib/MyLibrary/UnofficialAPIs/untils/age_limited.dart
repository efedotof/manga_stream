class MangaAgeLimit {
  final int id;
  final String name;

  MangaAgeLimit({required this.id, required this.name});

  factory MangaAgeLimit.fromJson(Map<String, dynamic> json) {
    return MangaAgeLimit(
      id: json['id'],
      name: json['name'],
    );
  }
}