import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final colorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 102, 6, 274),
  surface: const Color.fromARGB(255, 56, 49, 66),
);
final theme = ThemeData.from(
  colorScheme: colorScheme,
  textTheme: GoogleFonts.ubuntuCondensedTextTheme(),
).copyWith(
  scaffoldBackgroundColor: colorScheme.surface,
);
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
  title:'Great Places',
  theme: theme,
  darkTheme: ThemeData.dark(useMaterial3: true),
  themeMode:ThemeMode.system,
  home: Scaffold(appBar: AppBar(title:const Text('Grewat Places')),
  body: const Center(child:Text('hello,Flutter '))
  ,)
  );
  }
}
