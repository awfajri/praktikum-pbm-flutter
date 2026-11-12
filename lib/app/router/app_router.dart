import 'package:flutter/material.dart';
import '../../screens/home_menu_screen.dart';
import '../../screens/basic_text_screen.dart';
import '../../screens/container_column_screen.dart';
import '../../screens/scoreboard_screen.dart';
import '../../screens/match_detail_screen.dart';
import '../../screens/callback_modal_screen.dart';
import '../../screens/animation_screen.dart';

class AppRouter {
  // Daftar konstanta nama rute
  static const String home = '/';
  static const String basicText = '/basic-text';
  static const String containerColumn = '/container-column';
  static const String scoreboard = '/scoreboard';
  static const String matchDetail = '/match-detail';
  static const String callbackModal = '/callback-modal';
  static const String animation = '/animation';

  // Pemetaan rute ke masing-masing Screen
  static Map<String, WidgetBuilder> get routes => {
    home: (context) => const HomeMenuScreen(),
    basicText: (context) => const BasicTextScreen(),
    containerColumn: (context) => const ContainerColumnScreen(),
    scoreboard: (context) => const ScoreboardScreen(),
    matchDetail: (context) => const MatchDetailScreen(),
    callbackModal: (context) => const CallbackModalScreen(),
    animation: (context) => const AnimationScreen(),
  };
}
