class AuthService {
  /* static bool isLoggedIn = false;

  static void login(){
    isLoggedIn = true;
  }

  static void logout(){
    isLoggedIn = false;
  } */

 Future<bool> checkLogin() async{
  final prefs =   await SharedPreference.getInstance();
  final token = prefs.getString('jwt_token');

  if(token == null){
    Navigation.pushReplacementNamed('/login');
    return false;
  }
  return true;
 }

 Future<void> login() async {
 final prefs = await SharedPreference.getInstance();
 await prefs.remove('jwt_token');
 }
}