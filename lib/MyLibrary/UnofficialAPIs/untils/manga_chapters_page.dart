class MangaChapterPage {
  final int id;
  final String link;
  final int height;
  final int width;
  final int countComments;

  MangaChapterPage({
    required this.id,
    required this.link,
    required this.height,
    required this.width,
    required this.countComments,
  });

  factory MangaChapterPage.fromJson(Map<String, dynamic> json) {
    return MangaChapterPage(
      id: json['id'],
      link: json['link'],
      height: json['height'],
      width: json['width'],
      countComments: json['count_comments'],
    );
  }
}