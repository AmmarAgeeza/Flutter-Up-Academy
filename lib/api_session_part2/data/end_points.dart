class EndPoints {
  static const String baseUrl = 'https://food-api-omega.vercel.app/api/v1/';
  static const String chefSignIn = 'chef/signin';
  static const String chefChangePassword = 'chef/change-password';
  static const String chefDelete = 'chef/delete';
  static const String chefGet = 'chef/get-chef/';
  static const String sendCode = 'chef/send-code';
  static  String getChefDataEndPoint(id){
    return '$chefGet$id';
  }
}
// {{baseURL}}/chef/get-chef/64a2dafe744ee48035d4692c
// {{baseURL}}/chef/delete?id=649789d769bd2c36dce15979
// https://food-api-omega.vercel.app/api/v1/chef/signin
class ApiKey{
  
}