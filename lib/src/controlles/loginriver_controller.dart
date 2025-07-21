class LoginriverController  extends  StateNofifiler<LoginState{

  LoginriverController() : super(LogiState());

  void updateEmail(String value){
    state = state.copyWith(email: value);
  }

  void updatePassword(String value){
    state = state.copyWith(password: value);
  }

  Future<void> submitLogin() async{
    state = state.copyWith(isLoading: true);

    await Future.delayed(Duration(seconds: 2));

    state = state.copyWith(isLoading: false);

    if(state.email == '' && state.password ==){

    }
  }
}