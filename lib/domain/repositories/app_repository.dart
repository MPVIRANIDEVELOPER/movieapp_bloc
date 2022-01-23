import 'package:dartz/dartz.dart';
import 'package:movieapp_bloc/domain/entities/app_error.dart';

abstract class AppRepository {
  Future<Either<AppError, void>> updateLanguage(String language);
  Future<Either<AppError, String>> getPreferredLanguage();
}
