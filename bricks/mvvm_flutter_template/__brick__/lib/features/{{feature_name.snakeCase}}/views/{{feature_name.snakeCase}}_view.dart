import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../view_models/{{feature_name.snakeCase}}_view_model.dart';
import '../models/{{feature_name.snakeCase}}_model.dart';

class {{feature_name.pascalCase}}View extends ConsumerStatefulWidget {
  const {{feature_name.pascalCase}}View({super.key});

  @override
  ConsumerState<{{feature_name.pascalCase}}View> createState() => _{{feature_name.pascalCase}}ViewState();
}

class _{{feature_name.pascalCase}}ViewState extends ConsumerState<{{feature_name.pascalCase}}View> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() => ref.read({{feature_name.camelCase}}ViewModelProvider.notifier).build());
  }

  @override
  Widget build(BuildContext context) {
    final itemsAsync = ref.watch({{feature_name.camelCase}}ViewModelProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('{{feature_name.pascalCase}}'),
      ),
      body: itemsAsync.when(
        data: (items) => ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return ListTile(
              title: Text(item.title),
              subtitle: Text(item.description ?? ''),
              trailing: IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () {
                  ref.read({{feature_name.camelCase}}ViewModelProvider.notifier).deleteItem(item.id);
                },
              ),
            );
          },
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text('Error: $error')),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // TODO: Implement add item logic
        },
        child: const Icon(Icons.add),
      ),
    );
  }
} 