import 'package:dartz/dartz.dart';
import 'package:movieapp_bloc/domain/entities/app_error.dart';
import 'package:movieapp_bloc/domain/entities/movie_entity.dart';
import 'package:movieapp_bloc/domain/entities/no_params.dart';
import 'package:movieapp_bloc/domain/repositories/movie_repository.dart';
import 'package:movieapp_bloc/domain/usecases/usecase.dart';

class GetPlayingNow extends UseCase<List<MovieEntity>, NoParams> {
  final MovieRepository repository;

  GetPlayingNow(this.repository);

  @override
  Future<Either<AppError, List<MovieEntity>>> call(NoParams noParams) async {
    return await repository.getPlayingNow();
  }
}
