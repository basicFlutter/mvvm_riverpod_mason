import 'package:dartz/dartz.dart';
import '../../../../core/error/response_error.dart';
import '../../../../core/success_response/success_response.dart';
import '../../../../core/use_case/base_usecase.dart';
import '../repositories/{{name}}_repository.dart';

class {{useCase.pascalCase()}}UseCase extends BaseUseCase<SuccessResponse , void>{

  {{name.pascalCase()}}Repository {{name.camelCase()}}Repository;
  {{useCase.pascalCase()}}UseCase({required this.{{name.camelCase()}}Repository });
  @override
  Future<Either<ResponseError, SuccessResponse>> call(void params)async{
    return await {{name.camelCase()}}Repository.{{useCase.camelCase()}}();
  }
}