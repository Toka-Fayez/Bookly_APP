import 'package:booklyapp/core/utils/api_services.dart';
import 'package:booklyapp/feateures/home/data/models/book_model/book_model.dart';
import '../../domain/entities/book_entity.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> fetchFeaturedBooks();
  Future<List<BookEntity>> fetchNewestBooks();
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  final ApiServices apiServices;

  HomeRemoteDataSourceImpl(this.apiServices);
  @override
  Future<List<BookEntity>> fetchFeaturedBooks() async {
    var data = await apiServices.get(endPoint: 'endPoint');
    List<BookEntity> books = getBooksList(data);
    return books;
  }

  @override
  Future<List<BookEntity>> fetchNewestBooks() async {
    var data = await apiServices.get(endPoint: 'endPoint');
    List<BookEntity> books = getBooksList(data);
    return books;
  }

  List<BookEntity> getBooksList(Map<String, dynamic> data) {
    List<BookEntity> books = [];
    for (var bookMap in data['items']) {
      books.add(BookModel.fromJson(bookMap));
    }
    return books;
  }
}
