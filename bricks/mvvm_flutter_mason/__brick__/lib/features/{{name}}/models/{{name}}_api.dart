import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/exports.dart';
import '{{name}}_model.dart';

final {{name.camelCase()}}ApiProvider = Provider<{{name.pascalCase()}}Api>((ref) {
  return {{name.pascalCase()}}Api(ref.watch(apiClientProvider));
});

class {{name.pascalCase()}}Api {
  final ApiClient _client;

  {{name.pascalCase()}}Api(this._client);

  Future<List<{{name.pascalCase()}}Model>> getAll() async {
    try {
      final response = await _client.get('/{{name }}');
      return (response as List)
          .map((json) => {{name.pascalCase()}}Model.fromJson(json))
          .toList();
    } catch (e) {
      throw ErrorHandler.handleError(ServerException());
    }
  }

  Future<{{name.pascalCase()}}Model> getById(int id) async {
    try {
      final response = await _client.get('/{{name }}/$id');
      return {{name.pascalCase()}}Model.fromJson(response);
    } catch (e) {
      throw ErrorHandler.handleError(ServerException());
    }
  }

  Future<{{name.pascalCase()}}Model> create({{name.pascalCase()}}Model model) async {
    try {
      final response = await _client.post(
        '/{{name }}',
        data: model.toJson(),
      );
      return {{name.pascalCase()}}Model.fromJson(response);
    } catch (e) {
      throw ErrorHandler.handleError(ServerException());
    }
  }

  Future<{{name.pascalCase()}}Model> update(int id, {{name.pascalCase()}}Model model) async {
    try {
      final response = await _client.put(
        '/{{name }}/$id',
        data: model.toJson(),
      );
      return {{name.pascalCase()}}Model.fromJson(response);
    } catch (e) {
      throw ErrorHandler.handleError(ServerException());
    }
  }

  Future<void> delete(int id) async {
    try {
      await _client.delete('/{{name }}/$id');
    } catch (e) {
      throw ErrorHandler.handleError(ServerException());
    }
  }

  Future<{{name.pascalCase()}}Model> patch(int id, {{name.pascalCase()}}Model model) async {
    try {
      final response = await _client.patch(
        '/{{name }}/$id',
        data: model.toJson(),
      );
      return {{name.pascalCase()}}Model.fromJson(response);
    } catch (e) {
      throw ErrorHandler.handleError(ServerException());
    }
  }
} 