import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'providers/theme_providers.dart';
import 'routes/app_router.dart';

class NutraTrackApp extends ConsumerWidget {
  const NutraTrackApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(appRouterProvider);
    final themeMode = ref.watch(themeModeProvider);

    return MaterialApp.router(
      title: 'NutraTrack',
      debugShowCheckedModeBanner: false,
      themeMode: themeMode,
      theme: ref.watch(lightThemeProvider),
      darkTheme: ref.watch(darkThemeProvider),
      routerConfig: router,
    );
  }
}
