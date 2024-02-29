// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gb_pos_store/app/pos/views/_pos_views.dart';
import 'package:gb_pos_store/repositories/item_repository.dart';
import 'package:gb_pos_store/repositories/repositories.dart';
import 'package:gb_pos_store/services/item_service.dart';

void main() {
  var baseUrl = 'https://gb-store.online/api';

  runApp(
    MyApp(
      itemRepository: ItemRepository(
        itemService: ItemService(baseUrl: baseUrl),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  final ItemRepository itemRepository;
  const MyApp({Key? key, required this.itemRepository});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider.value(value: itemRepository),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme:
              ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 255, 1, 1)),
          useMaterial3: true,
        ),
        home: const PosPage(),
      ),
    );
  }
}
