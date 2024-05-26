class Title {
  final int id;
  final String mainName;
  final String dir;
  final String secondaryName;
  final int issueYear;
  final double avgRating;
  final int totalVotes;
  final int totalViews;
  final bool isLicensed;
  final bool isLegal;
  final String coverLow;
  final String coverMid;
  final String coverHigh;
  final String type;
  final int countChapters;
  final bool isYaoi;
  final bool isErotic;
  final String rusName;
  final String enName;
  final String imgLow;
  final String imgMid;
  final String imgHigh;

  Title({
    required this.id,
    required this.dir,
    required this.mainName,
    required this.secondaryName,
    required this.issueYear,
    required this.avgRating,
    required this.totalVotes,
    required this.totalViews,
    required this.isLicensed,
    required this.isLegal,
    required this.coverLow,
    required this.coverMid,
    required this.coverHigh,
    required this.type,
    required this.countChapters,
    required this.isYaoi,
    required this.isErotic,
    required this.rusName,
    required this.enName,
    required this.imgLow,
    required this.imgMid,
    required this.imgHigh,
  });

  factory Title.fromJson(Map<String, dynamic> json) {
    return Title(
      
      id: json['id'],
      dir: json['dir'],
      mainName: json['main_name'],
      secondaryName: json['secondary_name'],
      issueYear: json['issue_year'],
      avgRating: double.parse(json['avg_rating']),
      totalVotes: json['total_votes'],
      totalViews: json['total_views'],
      isLicensed: json['is_licensed'],
      isLegal: json['is_legal'],
      coverLow: json['cover']['low'],
      coverMid: json['cover']['mid'],
      coverHigh: json['cover']['high'],
      type: json['type'],
      countChapters: json['count_chapters'] ?? 0,
      isYaoi: json['is_yaoi'],
      isErotic: json['is_erotic'],
      rusName: json['rus_name'],
      enName: json['en_name'],
      imgLow: json['img']['low'],
      imgMid: json['img']['mid'],
      imgHigh: json['img']['high'],
    );
  }
}
