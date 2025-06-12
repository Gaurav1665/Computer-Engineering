class SignupFormController{
  String? nameValidator(String value){
    if(value == "") return "Please Enter Your Name";
    else if(value.isEmpty) return "Please Enter Your Name";
    else return null;
  }

  String? emailValidator(String value){
    if(value == "") return "Please Enter Your Email";
    else if(RegExp(r"").hasMatch(value)) return "Please Enter Correct Email";
    else return null;
  }

  String? phoneNumberValidator(String value){
    if(value == "") return "Please Enter Your Phone Number";
    else if(RegExp(r"^[0-9].{10}$").hasMatch(value)) return "Please Enter Correct Phone Number";
    else return null;
  }

  String? passwordValidator(String value){
    if(value == "") return "Please Enter Your password";
    else if(RegExp(r"^.{8,}$").hasMatch(value)) return "Password Must be at least 8 characters in length";
    else return null;
  }
}