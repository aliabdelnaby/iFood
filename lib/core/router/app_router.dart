import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/presentation/view/home_view.dart';
import '../../features/home/presentation/view/product_details_view.dart';
import '../../features/home/presentation/widget/nav_bar_widgets.dart';
import '../../features/splash/splash.dart';
import '../../features/start/presentation/view/start_view.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          key: state.pageKey,
          child: const SplashView(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );
      },
    ),
    GoRoute(
      path: '/start',
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          key: state.pageKey,
          child: const StartView(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );
      },
    ),
    GoRoute(
      path: '/mainView',
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          key: state.pageKey,
          child: const UserMainLayoutScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(1, 0),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );
          },
        );
      },
    ),
    GoRoute(
      path: '/home',
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          key: state.pageKey,
          child: const HomeView(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(1, 0),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );
          },
        );
      },
    ),
    GoRoute(
      path: '/productDetails',
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          key: state.pageKey,
          child: const ProductDetailsView(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(1, 0),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );
          },
        );
      },
    ),
  ],
);
