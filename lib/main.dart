import 'package:bloc_practice/constans/app_router.dart';

import 'package:flutter/material.dart';

void main() {
  runApp( CharctersApp(appRouter: AppRouter(),));
}

class CharctersApp extends StatelessWidget {
 final  AppRouter appRouter;
    CharctersApp({required this.appRouter,super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      onGenerateRoute: appRouter.generateRoute,
    );
  }
}
