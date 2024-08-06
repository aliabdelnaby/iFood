import 'package:go_router/go_router.dart';
import 'package:ifood/features/home/presentation/view/home_view.dart';
import '../../features/splash/splash.dart';
import '../../features/start/presentation/view/start_view.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: '/start',
      builder: (context, state) => const StartView(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomeView(),
    ),
  ],
);
