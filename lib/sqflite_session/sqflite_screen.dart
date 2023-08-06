import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ui/sqflite_session/cubit/sqflite_cubit.dart';

import 'cubit/sqflite_state.dart';

class SqfliteScreen extends StatelessWidget {
  const SqfliteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<SqfliteCubit, SqfliteState>(
      builder: (context, state) {
        return const Scaffold();
      },
    );
  }
}
