import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gaurav/Lab-2/Practical-2%20&%203/SignUpFormController.dart';


class SignUpFormView extends StatefulWidget {
  const SignUpFormView({super.key});

  @override
  State<SignUpFormView> createState() => _SignUpFormViewState();
}

class _SignUpFormViewState extends State<SignUpFormView> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  SignupFormController sfc = new SignupFormController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Signup Form"),),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            SizedBox(height: 20,),
            CustomTextFormField(
              controller: nameController,
              labelText: "Name",
              obscureText: false,
              textCapitalization: TextCapitalization.words,
              validator: (value) => sfc.nameValidator(value!),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp('[a-z A-Z]'))
              ]
            ),
            SizedBox(height: 20,),
            CustomTextFormField(
              controller: emailController,
              labelText: "Email",
              obscureText: false,
              validator: (value) => sfc.emailValidator(value!),
            ),
            SizedBox(height: 20,),
            CustomTextFormField(
              controller: phoneNumberController,
              labelText: "Phone Number",
              obscureText: false,
              maxLength: 10,
              validator: (value) => sfc.phoneNumberValidator(value!),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp('[0-9]'))
              ]
            ),
            SizedBox(height: 20,),
            CustomTextFormField(
              controller: passwordController,
              labelText: "Password",
              obscureText: false,
              validator: (value) => sfc.passwordValidator(value!),
            ),
            SizedBox(height: 20,),
            CustomTextFormField(
              controller: confirmPasswordController,
              labelText: "Confirm Password",
              obscureText: true,
              validator: (value) {
                if(passwordController.text != confirmPasswordController.text) return "password and the confirem password does not match";
                return null;
              }
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                if(_formKey.currentState!.validate()){
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Processing Data')),);
                }
              }, 
              child: Text("Sigh Up")
            )
          ],
        )
      ),
    );
  }

  Widget CustomTextFormField({
    TextEditingController? controller, 
    String? labelText, 
    bool? obscureText=false, 
    List<TextInputFormatter>? inputFormatters, 
    TextCapitalization? textCapitalization=TextCapitalization.none, 
    int? maxLength, 
    String? Function(String?)? validator
  }){
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        labelText: labelText,
      ),
      maxLength: maxLength,
      textCapitalization: textCapitalization!,
      obscureText: obscureText!,
      inputFormatters: inputFormatters,
      validator: validator,
    );
  }
}