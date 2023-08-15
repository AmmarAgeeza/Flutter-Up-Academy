import 'package:flutter_ui/api_session_part3/core/database/remote/api_consumer.dart';
import 'package:flutter_ui/api_session_part3/core/database/remote/end_points.dart';
import 'package:flutter_ui/api_session_part3/core/error/exceptions.dart';

import '../../../../core/services/service_locator.dart';

class TestRepositoryTwo {
  void signIn() {
    try{
       final res = sl<ApiConsumer>().post(
      EndPoint.chefSignIn,
    data: {
    "email": "ammarfathy516@gmail.com",
    "password": "anas123"
}
    );
    
    }
    
  on ServerException  catch (e){print(e.toString());}
    catch (e){print(e.toString());}
   
  }
}
