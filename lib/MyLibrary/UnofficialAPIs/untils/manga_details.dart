import 'models.dart';

class MangaContexDetails {
  final int id;
  final String mainName;
  final String secondaryName;
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
  final MangaContextStatus status;
  final MangaContextStatus translateStatus;
  final int countBookmarks;
  final int totalVotes;
  final String rusname;
  final int totalViews;
  final MangaType type;
  final List<MangaGenre> genres;
  final List<MangaCategory> categories;
  final int countChapters;
  final List<MangaBranch> branches;

  MangaContexDetails({
    required this.rusname,
    required this.id,
    required this.mainName,
    required this.secondaryName,
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
    required this.genres,
    required this.categories,
    required this.countChapters,
    required this.branches,
  });

  factory MangaContexDetails.fromJson(Map<String, dynamic> json) {
    return MangaContexDetails(
      rusname: json['rus_name'],
      id: json['id'] ?? 0,
      mainName: json['main_name'] ?? 'Не найдено',
      secondaryName: json['secondary_name'] ?? 'Не найдено',
      anotherName: json['another_name'] ?? 'Не найдено',
      dir: json['dir'] ?? '',
      description: json['description'] ?? 'Нет описания',
      issueYear: json['issue_year'] ?? 0,
      avgRating: double.parse(json['avg_rating'] ?? '0'),
      coverLow: json['cover']['low'] ?? '',
      coverMid: json['cover']['mid'] ?? '',
      coverHigh: json['cover']['high'] ?? '',
      adminRating: double.parse(json['admin_rating'] ?? '0'),
      countRating: json['count_rating'] ?? 0,
      ageLimit: json['age_limit'] ?? 0,
      status: MangaContextStatus.fromJson(json['status']),
      translateStatus: MangaContextStatus.fromJson(json['translate_status']),
      countBookmarks: json['count_bookmarks'] ?? 0,
      totalVotes: json['total_votes'] ?? 0,
      totalViews: json['total_views'] ?? 0,
      type: MangaType.fromJson(json['type']),
      genres: (json['genres'] as List<dynamic>)
          .map((genre) => MangaGenre.fromJson(genre))
          .toList(),
      categories: (json['categories'] as List<dynamic>)
          .map((category) => MangaCategory.fromJson(category))
          .toList(),
      countChapters: json['count_chapters'] ?? 0,
      branches: (json['branches'] as List<dynamic>)
          .map((branch) => MangaBranch.fromJson(branch))
          .toList(),
    );
  }
}

class MangaBranch {
  final int id;
  final String immuneDate;
  final String imgMid;
  final String imgHigh;
  final bool subscribed;
  final int totalVotes;
  final int countChapters;
  final List<MangaPublisher> publishers;

  MangaBranch({
    required this.id,
    required this.immuneDate,
    required this.imgMid,
    required this.imgHigh,
    required this.subscribed,
    required this.totalVotes,
    required this.countChapters,
    required this.publishers,
  });

  factory MangaBranch.fromJson(Map<String, dynamic> json) {
    return MangaBranch(
      id: json['id'] ?? 0,
      immuneDate: json['immune_date'] ?? '',
      imgMid: json['img']['mid'] ?? '',
      imgHigh: json['img']['high'] ?? '',
      subscribed: json['subscribed'] ?? false,
      totalVotes: json['total_votes'] ?? 0,
      countChapters: json['count_chapters'] ?? 0,
      publishers: (json['publishers'] as List<dynamic>)
          .map((publisher) => MangaPublisher.fromJson(publisher))
          .toList(),
    );
  }
}

class MangaPublisher {
  final int id;
  final String name;
  final String img;
  final String dir;
  final String tagline;
  final String type;

  MangaPublisher({
    required this.id,
    required this.name,
    required this.img,
    required this.dir,
    required this.tagline,
    required this.type,
  });

  factory MangaPublisher.fromJson(Map<String, dynamic> json) {
    return MangaPublisher(
      id: json['id'] ?? 0,
      name: json['name'] ?? '',
      img: json['img'] ?? '',
      dir: json['dir'] ?? '',
      tagline: json['tagline'] ?? '',
      type: json['type'] ?? '',
    );
  }
}
class MangaContextStatus {
  final int id;
  final String name;

  MangaContextStatus({
    required this.id,
    required this.name,
  });

  factory MangaContextStatus.fromJson(Map<String, dynamic> json) {
    return MangaContextStatus(
      id: json['id'] ?? 0,
      name: json['name'] ?? 'Не найдено',
    );
  }
}