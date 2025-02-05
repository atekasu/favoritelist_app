import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';
import 'package:alpah/screen/addfavaritomodel.dart';

class FavoritlistScreen extends StatefulWidget {
  const FavoritlistScreen({
    super.key,
  });
  @override
  State<FavoritlistScreen> createState() => _FavoritelistscreenState();
}

class _FavoritelistscreenState extends State<FavoritlistScreen> {
  @override
  Widget build(BuildContext) {
    return Scaffold(
      appBar: AppBar(title: Text('favoritelist'),
       actions: [
        IconButton(
          icon: const Icon(Icons.add),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (ctx) =>  AddScreen()));
          },
        ),
      ],
),
      body: Center(
        child: Text('data'),
      ),
    );
  }
}
