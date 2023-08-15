
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ui/api_session_part2/data/end_points.dart';
import 'package:flutter_ui/api_session_part3/core/database/remote/api_consumer.dart';
import 'package:flutter_ui/api_session_part3/features/test/presentation/cubit/test_state.dart';

import '../../../../core/database/remote/end_points.dart';
import '../../../../core/services/service_locator.dart';

class TestCubit extends Cubit<TestState> {
  TestCubit() : super(TestInitial());
  void getDataOfChef()async{
final res= await sl<ApiConsumer>().get(EndPoint.albums);
print(res);
  }
}
