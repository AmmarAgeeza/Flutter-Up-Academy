import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ui/api_session/cubit/api_cubit.dart';
import 'package:flutter_ui/api_session_part2/presentation/cubit/chef_cubit.dart';
import 'package:flutter_ui/sqflite_session/cubit/sqflite_cubit.dart';

import '../api_session_part2/presentation/screens/api_session_part2.dart';

class RootWidget extends StatelessWidget {
  const RootWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SqfliteCubit()..createDataBase(),
        ),
        BlocProvider(
          create: (context) => ApiCubit()..getAlbumsData(),
        ),
        BlocProvider(
          create: (context) => ChefCubit()..chefDelte(),
        ),
        
      ],
      child: const MaterialApp(
          title: 'Fluter Up Academy',
          debugShowCheckedModeBanner: false,
          home: SafeArea(
            child: ApiSessionPart2(),
          )),
    );
  }
}

