class MangaStatus {
  final int id;
  final String name;

  MangaStatus({required this.id, required this.name});

  factory MangaStatus.fromJson(Map<String, dynamic> json) {
    return MangaStatus(
      id: json['id'],
      name: json['name'],
    );
  }
}