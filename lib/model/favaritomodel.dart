import 'package:uuid/uuid.dart';

const Uuid _uuid = Uuid();

class FavoritePlace {
  FavoritePlace({
    required this.name,
    String? id,
  }) : id = id ?? _uuid.v4();
  final String name;
  final String id;
}
