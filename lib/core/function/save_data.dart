import 'package:hive/hive.dart';
import '../../feateures/home/domain/entities/book_entity.dart';

void saveBooksData(List<BookEntity> books, String boxName) {
  var box = Hive.box(boxName);
  box.addAll(books);
}
