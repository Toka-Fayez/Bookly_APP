import 'package:hive_flutter/adapters.dart';

part 'book_entity.g.dart';
@HiveType(typeId: 0)
class BookEntity {
  @HiveField(0)
  final String bookId;
  @HiveField(1)
  final String? image;
  @HiveField(2)
  final String title;
  @HiveField(3)
  final String? autherName;
  @HiveField(4)
  final num? rating;

  BookEntity({
    required this.bookId,
    required this.image,
    required this.title,
    required this.autherName,
    required this.rating,
  });
}
