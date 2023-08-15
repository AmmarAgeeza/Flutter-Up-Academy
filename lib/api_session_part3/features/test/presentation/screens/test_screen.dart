import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/test_cubit.dart';
import '../cubit/test_state.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TestCubit,TestState>(
      builder: (context, state) => const Scaffold(),
    );
  }
}