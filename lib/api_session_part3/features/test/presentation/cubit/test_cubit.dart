import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ui/api_session_part3/features/test/data/repositories/test_repository.dart';
import 'package:flutter_ui/api_session_part3/features/test/presentation/cubit/test_state.dart';


class TestCubit extends Cubit<TestState> {
  TestCubit(this.repo) : super(TestInitial());
 final TestRepositoryTwo repo;
 void signIn(){
  repo.signIn();
 }
}
