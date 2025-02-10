import 'package:booklyapp/core/base_use_cases/use_cases.dart';
import 'package:booklyapp/core/errors/failure.dart';
import 'package:booklyapp/feateures/home/domain/entities/book_entity.dart';
import 'package:booklyapp/feateures/home/domain/repo/home_repo.dart';
import 'package:dartz/dartz.dart';

class FatchNewestBooksUseCase extends UseCases<List<BookEntity>,NoParam> {
  final HomeRepo homeRepo;
  FatchNewestBooksUseCase({required this.homeRepo});
  
  @override
  Future<Either<Failure, List<BookEntity>>> call([NoParam? param]) async{
    return await homeRepo.fetchNewestBooks();
  }

}