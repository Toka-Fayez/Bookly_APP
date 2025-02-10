import 'package:booklyapp/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class UseCases<Type,param> {
  Future<Either<Failure, Type>> call([param param]);
}
class NoParam{}
