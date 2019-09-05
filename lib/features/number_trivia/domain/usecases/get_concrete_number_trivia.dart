import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:number_trivia/core/usecases/usecase.dart';
import '../../../../core/errors/failure.dart';
import '../entities/number_trivia.dart';
import '../repositories/number_trivia_repository.dart';

class GetConcreteNumberTrivia implements UseCase<NumberTrivia, Params> {
  final NumberTriviaRepository repository;

  GetConcreteNumberTrivia(this.repository);

  // The "call" name allows to call the method without specifying its name: "final result = await usecase(number: tNumber);"
  @override
  Future<Either<Failure, NumberTrivia>> call({
    Params params,
  }) async {
    return await repository.getConcreteNumberTrivia(params.number);
  }
}

class Params extends Equatable{
  final int number;
  Params({@required this.number}) : super([number]);
}