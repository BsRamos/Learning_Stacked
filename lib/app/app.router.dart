// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../UserInterface/pages/initial_page/initial_page_view.dart';
import '../UserInterface/pages/rules_page/rules_page_view.dart';

class Routes {
  static const String initialPageView = '/';
  static const String rulesPageView = '/rules-page-view';
  static const all = <String>{
    initialPageView,
    rulesPageView,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.initialPageView, page: InitialPageView),
    RouteDef(Routes.rulesPageView, page: RulesPageView),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    InitialPageView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const InitialPageView(),
        settings: data,
      );
    },
    RulesPageView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const RulesPageView(),
        settings: data,
      );
    },
  };
}
