class MangaType {
  final int id;
  final String name;

  MangaType({
    required this.id,
    required this.name,
  });

  factory MangaType.fromJson(Map<String, dynamic> json) {
    return MangaType(
      id: json['id'] ?? 0,
      name: json['name'] ?? 'Не найдено',
    );
  }
}