// صفحه اصلی ویژگی
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../viewmodels/{{name}}_viewmodel.dart';

class {{name.pascalCase()}}View extends ConsumerStatefulWidget {
  const {{name.pascalCase()}}View({Key? key}) : super(key: key);

  @override
  ConsumerState<{{name.pascalCase()}}View> createState() => _{{name.pascalCase()}}ViewState();
}

class _{{name.pascalCase()}}ViewState extends ConsumerState<{{name.pascalCase()}}View> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() => ref.read({{name.camelCase()}}ViewModelProvider.notifier).loadAll());
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = ref.watch({{name.camelCase()}}ViewModelProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('{{name.pascalCase()}}'),
      ),
      body: viewModel.when(
        data: (items) => ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return ListTile(
              title: Text(item.name),
              subtitle: Text(item.description ?? ''),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.edit),
                    onPressed: () {
                      // TODO: Implement edit
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () {
                      ref.read({{name.camelCase()}}ViewModelProvider.notifier).delete(item.id);
                    },
                  ),
                ],
              ),
            );
          },
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text('Error: $error')),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // TODO: Implement create
        },
        child: const Icon(Icons.add),
      ),
    );
  }
} 