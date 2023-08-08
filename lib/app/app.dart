import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ui/api_session/cubit/api_cubit.dart';
import 'package:flutter_ui/sqflite_session/cubit/sqflite_cubit.dart';

import '../api_session/screens/api_session.dart';

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
        
      ],
      child: const MaterialApp(
          title: 'Fluter Up Academy',
          debugShowCheckedModeBanner: false,
          home: SafeArea(
            child: ApiSession(),
          )),
    );
  }
}

