import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tokumemo_plus/components/common/ScaffoldWithNavBarWidget.dart';
import 'package:tokumemo_plus/main.dart';
import 'package:tokumemo_plus/pages/Club_list.dart';
import 'package:tokumemo_plus/pages/Home.dart';
import 'package:tokumemo_plus/pages/NewTermPermission.dart';
import 'package:tokumemo_plus/pages/News.dart';
import 'package:tokumemo_plus/pages/Settings.dart';
import 'package:tokumemo_plus/pages/SubPages/AdsContact.dart';
import 'package:tokumemo_plus/pages/SubPages/CurrentTerm.dart';
import 'package:tokumemo_plus/pages/SubPages/PrivacyPolicy.dart';
//go_routerのbotttomNavigationBarの書き方
//https://zenn.dev/k_kawasaki/articles/2cee32fc8a907d
//go_routerのstatefulShellRouteの最新情報
//https://zenn.dev/jboy_blog/articles/a14ef7fcc031c4
final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _homeNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'home');
final GlobalKey<NavigatorState> _shellNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'shell');
final GlobalKey<NavigatorState> _navigationNavigatorKey =GlobalKey<NavigatorState>(debugLabel: 'bottom_navigation');
final GoRouter router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: '/',
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context,state){
          return const MyHomePage(title: 'ホーム');
        },
      ),
      GoRoute(path: '/agreementnewterms', builder: (context, state) => const NewTermsPermissionView()),
      StatefulShellRoute.indexedStack(
        builder: (BuildContext context,GoRouterState state,StatefulNavigationShell child){
          return ScaffoldWithNavBar(child: child);
          },
        branches:[
          StatefulShellBranch(
              navigatorKey: _shellNavigatorKey, 
              routes: <RouteBase>[
                GoRoute(
                    path: '/home',
                    builder:(BuildContext context,state){
                      return const Home();
                    }
                  ),
                GoRoute(
                  path: '/home/AdsContact',
                  builder:(BuildContext context,state){
                    return const AdsContact();
                  }
                ),
                GoRoute(
                  path: '/home/CurrentTerm',
                  builder: (BuildContext context,state){
                    return const CurrentTerm();
                  }
                ),
                GoRoute(
                  path: '/home/PrivacyPolicy',
                  builder: (BuildContext context,state){
                    return const PrivacyPolycyPage();
                  }
                ),
              ],
            ),
            StatefulShellBranch(
              navigatorKey: _shellNavigatorKey,
              routes:<RouteBase>[
                GoRoute(
                  path: '/news',
                  builder:(BuildContext context,state){
                    return const News();
                  }
                ),
              ]
            ),
            StatefulShellBranch(
              navigatorKey: _shellNavigatorKey,
              routes:<RouteBase>[
                GoRoute(
                  path: '/clublist/list',
                  builder:(BuildContext context,state){
                    return const ClublistPage();
                    },
                  ),
                ],
            ),
            StatefulShellBranch(
              navigatorKey: _shellNavigatorKey,
              routes:<RouteBase>[
                GoRoute(
                  path:'/settings',
                  builder: (BuildContext context,state){
                    return const SettingsPage();
                  }
                ),
              ],
            ),
          ],
    ),
  ],
);
