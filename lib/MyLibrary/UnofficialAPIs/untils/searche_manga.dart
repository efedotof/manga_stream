class MangaSearchResult {
  final int id;
  final String mainName;
  final String secondaryName;
  final String dir;
  final int issueYear;
  final double avgRating;
  final String type;
  final int countChapters;
  final String rusName;
  final String enName;
  final String coverLow;
  final String coverMid;
  final String coverHigh;

  MangaSearchResult({
    required this.id,
    required this.mainName,
    required this.secondaryName,
    required this.issueYear,
    required this.avgRating,
    required this.type,
    required this.dir,
    required this.countChapters,
    required this.rusName,
    required this.enName,
    required this.coverLow,
    required this.coverMid,
    required this.coverHigh,
  });

  factory MangaSearchResult.fromJson(Map<String, dynamic> json) {
    return MangaSearchResult(
      id: json['id'],
      dir: json['dir'] ?? '',
      mainName: json['main_name'],
      secondaryName: json['secondary_name'],
      issueYear: json['issue_year'],
      avgRating: double.parse(json['avg_rating']),
      type: json['type'],
      countChapters: json['count_chapters'],
      rusName: json['rus_name'],
      enName: json['en_name'],
      coverLow: json['cover']['low'],
      coverMid: json['cover']['mid'],
      coverHigh: json['cover']['high'],
    );
  }
}