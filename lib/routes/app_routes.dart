import 'package:coffeeshop/detail_page.dart';
import 'package:coffeeshop/homepage.dart';
import 'package:coffeeshop/welcome_screen.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
        name: 'welcome',
        path: '/',
        builder: (context, state) => WelcomeScreen()),
    GoRoute(
      name: 'home',
      path: '/home',
      builder: (context, state) {
        return Homepage();
      },
      routes: [
        GoRoute(path: ':itemid',builder: (context,state){
          final itemid = state.pathParameters["itemid"];
          return DetailPage(itemid:itemid);
        })
]
    )
  ],
);
