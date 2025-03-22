import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/{{feature_name.snakeCase}}_model.dart';

part '{{feature_name.snakeCase}}_view_model.g.dart';

@riverpod
class {{feature_name.pascalCase}}ViewModel extends _${{feature_name.pascalCase}}ViewModel {
  @override
  Future<List<{{feature_name.pascalCase}}Model>> build() async {
    // TODO: Implement your data fetching logic here
    return [];
  }

  Future<void> addItem({{feature_name.pascalCase}}Model item) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      // TODO: Implement your add logic here
      return [...state.value ?? [], item];
    });
  }

  Future<void> updateItem({{feature_name.pascalCase}}Model item) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final items = state.value ?? [];
      final index = items.indexWhere((i) => i.id == item.id);
      if (index == -1) return items;
      final newItems = List<{{feature_name.pascalCase}}Model>.from(items);
      newItems[index] = item;
      return newItems;
    });
  }

  Future<void> deleteItem(int id) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final items = state.value ?? [];
      return items.where((item) => item.id != id).toList();
    });
  }
} 