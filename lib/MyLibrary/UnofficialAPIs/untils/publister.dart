class MangaPublisher {
  final int id;
  final String name;
  final String dir;

  MangaPublisher({
    required this.id,
    required this.name,
    required this.dir,
  });

  factory MangaPublisher.fromJson(Map<String, dynamic> json) {
    return MangaPublisher(
      id: json['id'],
      name: json['name'],
      dir: json['dir'],
    );
  }
}