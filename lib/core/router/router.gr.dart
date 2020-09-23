// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';

import '../../main.dart';

class Routes {
  static const String myHomePage = '/';
  static const all = <String>{
    myHomePage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.myHomePage, page: MyHomePage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    MyHomePage: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => const MyHomePage(),
        settings: data,
      );
    },
  };
}
