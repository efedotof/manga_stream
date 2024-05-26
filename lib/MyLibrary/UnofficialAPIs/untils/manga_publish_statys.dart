class MangaPublishStatus {
  final int id;
  final String name;

  MangaPublishStatus({required this.id, required this.name});

  factory MangaPublishStatus.fromJson(Map<String, dynamic> json) {
    return MangaPublishStatus(
      id: json['id'],
      name: json['name'],
    );
  }
}