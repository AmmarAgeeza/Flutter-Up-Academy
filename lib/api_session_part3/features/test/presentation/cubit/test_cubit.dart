import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ui/api_session_part3/features/test/data/repository/test_repository.dart';
import 'package:flutter_ui/api_session_part3/features/test/presentation/cubit/test_state.dart';

class TestCubit extends Cubit<TestState> {
  TestCubit(this.testRepository) : super(TestInitial());
  final TestRepository testRepository;
  void signIn() async {
    var result = await testRepository.signIn();
    result.fold(
      (l) => print('=>>>$l'),
      (r) => print(
        '=>>>${r.message}',
      ),
    );
  }
}
