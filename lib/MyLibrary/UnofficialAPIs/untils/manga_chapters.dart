import 'publister.dart';

class MangaChapter {
  final int id;
  final int index;
  final int tome;
  final String chapter;
  final String name;
  final bool isPaid;
  final List<MangaPublisher> publishers;
  final double price;
  final int score;
  final DateTime uploadDate;
  final DateTime? pubDate;

  MangaChapter({
    required this.id,
    required this.index,
    required this.tome,
    required this.chapter,
    required this.name,
    required this.isPaid,
    required this.publishers,
    required this.price,
    required this.score,
    required this.uploadDate,
    required this.pubDate,
  });

  factory MangaChapter.fromJson(Map<String, dynamic> json) {
    return MangaChapter(
      id: json['id'],
      index: json['index'],
      tome: json['tome'],
      chapter: json['chapter'],
      name: json['name'],
      isPaid: json['is_paid'],
      publishers: (json['publishers'] as List<dynamic>)
          .map((publisher) => MangaPublisher.fromJson(publisher))
          .toList(),
      price: json['price'] != null ? double.parse(json['price']) : 0,
      score: json['score'],
      uploadDate: DateTime.parse(json['upload_date']),
      pubDate: json['pub_date'] != null
          ? DateTime.parse(json['pub_date'])
          : null,
    );
  }
}

