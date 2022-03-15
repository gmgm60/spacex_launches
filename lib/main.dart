import 'package:fact_app/bloc/all_launches/launches_cubit.dart';
import 'package:fact_app/get_it/get_it.dart';
import 'package:fact_app/ui/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import 'bloc/view_one_launch/one_launch_cubit.dart';
import 'get_it/injectable.dart';

void main() {
 // AppGetIt.setup();
  configureInjection(environment: InjectInv.prod);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
          getIt.get<LaunchesCubit>()
            ..getLaunches(),
        ),
        BlocProvider(
          create: (context) => getIt.get<OneLaunchCubit>(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Home(),
      ),
    );
  }
}
