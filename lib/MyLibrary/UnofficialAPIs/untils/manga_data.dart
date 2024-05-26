
import 'models.dart';


class MangaSearcheData {
  final int id;
  final String secondaryName;
  final String mainName;
  final String anotherName;
  final String dir;
  final String description;
  final int issueYear;
  final double avgRating;
  final String coverLow;
  final String coverMid;
  final String coverHigh;
  final double adminRating;
  final int countRating;
  final int ageLimit;
  final MangaPublishStatus status;
  final MangaPublishStatus translateStatus;
  final int countBookmarks;
  final int totalVotes;
  final int totalViews;
  final MangaType type;
  final List<dynamic> creators;
  final List<dynamic> genres;
  final List<dynamic> categories;
  final dynamic bookmarkType;
  final dynamic rated;
  final List<dynamic> branches;
  final int countChapters;

  MangaSearcheData({
    required this.id,
    required this.secondaryName,
    required this.mainName,
    required this.anotherName,
    required this.dir,
    required this.description,
    required this.issueYear,
    required this.avgRating,
    required this.coverLow,
    required this.coverMid,
    required this.coverHigh,
    required this.adminRating,
    required this.countRating,
    required this.ageLimit,
    required this.status,
    required this.translateStatus,
    required this.countBookmarks,
    required this.totalVotes,
    required this.totalViews,
    required this.type,
    required this.creators,
    required this.genres,
    required this.categories,
    required this.bookmarkType,
    required this.rated,
    required this.branches,
    required this.countChapters,
  });

  factory MangaSearcheData.fromJson(Map<String, dynamic> json) {
    return MangaSearcheData(
      id: json['id'],
      secondaryName: json['secondary_name'],
      mainName: json['main_name'],
      anotherName: json['another_name'],
      dir: json['dir'],
      description: json['description'],
      issueYear: json['issue_year'],
      avgRating: double.parse(json['avg_rating']),
      coverLow: json['cover']['low'],
      coverMid: json['cover']['mid'],
      coverHigh: json['cover']['high'],
      adminRating: double.parse(json['admin_rating']),
      countRating: json['count_rating'],
      ageLimit: json['age_limit'],
      status: MangaPublishStatus.fromJson(json['status']),
      translateStatus: MangaPublishStatus.fromJson(json['translate_status']),
      countBookmarks: json['count_bookmarks'],
      totalVotes: json['total_votes'],
      totalViews: json['total_views'],
      type: MangaType.fromJson(json['type']),
      creators: json['creators'],
      genres: json['genres'],
      categories: json['categories'],
      bookmarkType: json['bookmark_type'],
      rated: json['rated'],
      branches: json['branches'],
      countChapters: json['count_chapters'],
    );
  }
}
