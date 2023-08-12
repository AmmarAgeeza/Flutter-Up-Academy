import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ui/api_session_part2/presentation/cubit/chef_cubit.dart';

import '../cubit/chef_state.dart';

class ApiSessionPart2 extends StatelessWidget {
  const ApiSessionPart2({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChefCubit, ChefState>(
      builder: (context, state) {
        return const Scaffold();
      },
    );
  }
}
