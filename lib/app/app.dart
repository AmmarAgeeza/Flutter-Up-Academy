import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ui/api_session/cubit/api_cubit.dart';
import 'package:flutter_ui/api_session_part2/presentation/cubit/chef_cubit.dart';
import 'package:flutter_ui/api_session_part3/core/services/service_locator.dart';
import 'package:flutter_ui/api_session_part3/features/test/presentation/cubit/test_cubit.dart';
import 'package:flutter_ui/sqflite_session/cubit/sqflite_cubit.dart';

import '../animation/AnimatedPaddingExample.dart';
import '../api_session_part3/features/send_code_forgotten_password/presentation/cubit/send_code_cubit.dart';

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
        BlocProvider(
          create: (context) => sl<TestCubit>()..signIn(),
        ),
        BlocProvider(
          create: (context) => sl<SendCodeCubit>(),
        ),
      ],
      child: const MaterialApp(
          title: 'Fluter Up Academy',
          debugShowCheckedModeBanner: false,
          home: SafeArea(
            child: AnimatedPAddingExample(),
          ),),
    );
  }
}
