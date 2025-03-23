// ViewModel مربوط به ویژگی با استفاده از Riverpod Generator
import 'dart:async';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/{{name}}_model.dart';
import '../models/{{name}}_api.dart';

part '{{name}}_viewmodel.g.dart';

@riverpod
class {{name.pascalCase()}}ViewModel extends _${{name.pascalCase()}}ViewModel {
  @override
  FutureOr<List<{{name.pascalCase()}}Model>> build() async {
    return [];
  }

  Future<void> loadAll() async {
    state = const AsyncLoading();
    try {
      final api = ref.read({{name.camelCase()}}ApiProvider);
      final result = await api.getAll();
      state = AsyncData(result);
    } catch (error, stackTrace) {
      state = AsyncError(error, stackTrace);
    }
  }

  Future<void> create({{name.pascalCase()}}Model model) async {
    state = const AsyncLoading();
    try {
      final api = ref.read({{name.camelCase()}}ApiProvider);
      await api.create(model);
      final result = await api.getAll();
      state = AsyncData(result);
    } catch (error, stackTrace) {
      state = AsyncError(error, stackTrace);
    }
  }

  Future<void> updateItem(int id, {{name.pascalCase()}}Model model) async {
    state = const AsyncLoading();
    try {
      final api = ref.read({{name.camelCase()}}ApiProvider);
      await api.update(id, model);
      final result = await api.getAll();
      state = AsyncData(result);
    } catch (error, stackTrace) {
      state = AsyncError(error, stackTrace);
    }
  }

  Future<void> delete(int id) async {
    state = const AsyncLoading();
    try {
      final api = ref.read({{name.camelCase()}}ApiProvider);
      await api.delete(id);
      final result = await api.getAll();
      state = AsyncData(result);
    } catch (error, stackTrace) {
      state = AsyncError(error, stackTrace);
    }
  }
} 