import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_providerscope_bug/providers.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ProviderScope(
      overrides: [
        getResourceTypeProvider.overrideWithValue("item"),
        getAllResourcesProvider.overrideWith((ref) async {
          return await ref.watch(getAllChildItemsProvider.future);
        }),
      ],
      child: const SearchBar(),
    );
  }
}

class SearchBar extends ConsumerWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      body: Column(
        children: [
          SearchTextField(),
          Expanded(
            child: ItemList(),
          ),
        ],
      ),
    );
  }
}

class SearchTextField extends HookConsumerWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = useTextEditingController();

    return TextField(
      controller: controller,
      onChanged: (value) {
        ref.read(searchTextStateProvider.notifier).set(value);
      },
    );
  }
}

class ItemList extends ConsumerWidget {
  const ItemList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return switch (ref.watch(resourcesCountProvider)) {
      AsyncData(value: final count) => ListView.builder(
          itemCount: count,
          itemBuilder: (context, index) {
            return switch (ref.watch(resourcesSearchResultAtProvider(index))) {
              AsyncData(value: final item) => ListTile(
                  title: Text(item.name),
                ),
              _ => null,
            };
          },
        ),
      _ => const Center(child: CircularProgressIndicator()),
    };
  }
}
