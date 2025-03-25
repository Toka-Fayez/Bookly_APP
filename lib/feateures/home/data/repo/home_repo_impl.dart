import 'package:booklyapp/core/errors/failure.dart';
import 'package:booklyapp/feateures/home/data/data_source/home_local_data_source.dart';
import 'package:booklyapp/feateures/home/data/data_source/home_remote_data_source.dart';

import 'package:booklyapp/feateures/home/domain/entities/book_entity.dart';

import 'package:dartz/dartz.dart';

import '../../domain/repo/home_repo.dart';

class HomeRpoImpl extends HomeRepo {
  final HomeLocalDataSource homeLocalDataSource;
  final HomeRemoteDataSource homeRemoteDataSource;
  HomeRpoImpl(
      {required this.homeLocalDataSource, required this.homeRemoteDataSource});

  @override
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks() async {
    try {
      List<BookEntity> books;
     books = homeLocalDataSource.fetchFeaturedBooks();
      if (books.isNotEmpty) {
        return Right(books);
      }
       books = await homeRemoteDataSource.fetchFeaturedBooks();
      return Right(books);
    } catch (e) {
      return Left(Failure());
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchNewestBooks() async {
    try {
      List<BookEntity> books;
       books = homeLocalDataSource.fetchNewestBooks();
      if (books.isNotEmpty) {
        return Right(books);
      }
       books = await homeRemoteDataSource.fetchNewestBooks();
      return Right(books);
    } catch (e) {
      return Left(Failure());
    }
  }
}
