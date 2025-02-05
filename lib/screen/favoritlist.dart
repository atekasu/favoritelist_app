import 'package:alpah/favoriteplace/favorite_place.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod/riverpod.dart';
import 'package:alpah/screen/addfavaritomodel.dart';

class FavoritelistscreenState extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favoritelist = ref.watch(favoritelistProvide);
    return Scaffold(
      appBar: AppBar(
        title: Text('favoritelist'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (ctx) => AddScreen()));
            },
          ),
        ],
      ),
      body: favoritelist.isEmpty
          ? Center(
              child: Text('登録してください'),
            )
          : ListView.builder(
              itemCount: favoritelist.length,
              itemBuilder: (ctx, index) => ListTile(
                title: Text(favoritelist[index].title),
              ),
            ),
    );
  }
}
