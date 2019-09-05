import 'package:dartz/dartz.dart';
import 'package:number_trivia/core/errors/failure.dart';

// This allows to force to implement the "call" method
abstract class UseCase<Type, Params>{
  Future<Either<Failure, Type>> call();
}