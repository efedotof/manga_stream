class MangaGenre {
  final int id;
  final String name;

  MangaGenre({
    required this.id,
    required this.name,
  });

  factory MangaGenre.fromJson(Map<String, dynamic> json) {
    return MangaGenre(
      id: json['id'] ?? 0,
      name: json['name'] ?? 'Не найдено',
    );
  }
}