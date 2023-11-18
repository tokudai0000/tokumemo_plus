import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tokumemo_plus/components/common/ScaffoldWithNavBarWidget.dart';
//go_routerのbotttomNavigationBarの書き方
//https://zenn.dev/k_kawasaki/articles/2cee32fc8a907d
//go_routerのstatefulShellRouteの最新情報
//https://zenn.dev/jboy_blog/articles/a14ef7fcc031c4
final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _homeNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'home');
final GlobalKey<NavigatorState> _myPageNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'my_page');
final GlobalKey<NavigatorState> _navigationNavigatorKey =GlobalKey<NavigatorState>(debugLabel: 'bottom_navigation');
final GoRouter router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: '/',
    routes: <RouteBase>[
    StatefulShellRoute.indexedStack(
      builder: (context, state, child){
        return ScaffoldWithNavBar(child: child);
      },
        branches: branches,
        navigatorContainerBuilder: navigatorContainerBuilder
    )
  ]
);
