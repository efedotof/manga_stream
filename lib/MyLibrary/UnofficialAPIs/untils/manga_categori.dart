class MangaCategory {
 final int id;
  final String name;

  MangaCategory({
    required this.id,
    required this.name,
  });

  factory MangaCategory.fromJson(Map<String, dynamic> json) {
    return MangaCategory(
      id: json['id'] ?? 0,
      name: json['name'] ?? 'Не найдено',
    );
  }
}

