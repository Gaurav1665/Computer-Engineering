class SignUpFormModel{
  String? name, email, password;
  int? phoneNumber;

  SignUpFormModel(name,email,phoneNumber,password){
    this.name = name;
    this.email = email;
    this.phoneNumber = phoneNumber;
    this.password = password;
  }
}