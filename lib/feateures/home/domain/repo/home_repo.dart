import 'package:booklyapp/core/errors/failure.dart';
import 'package:booklyapp/feateures/home/domain/entities/book_entity.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure,List<BookEntity>>> fetchFeaturedBooks();  
  Future<Either<Failure,List<BookEntity>>> fetchNewestBooks();   

}