import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:groceries_app_ui/Auth/SignupScreen/SignUpWithEmail.dart';
import 'package:groceries_app_ui/Components/PrimaryButton.dart';
import '../../Config/Colors.dart';
import '../../Config/TextStyle.dart';
import '../../Config/strings.dart';
import '../../Screens/HomeScreen/HomeScreen.dart';
class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  late TextEditingController _emailController;
  late FocusNode _emailFocus;
  bool _isHovered = true;
  bool passwordVisible=false;

  String? _validateEmail(String? value) {
    if (value != null && value.isNotEmpty) {
      if (!emailValidatorRegExp.hasMatch(value)) {
        return 'Enter a valid email';
      }
    }
    return null;
  }

  RegExp emailValidatorRegExp = RegExp(
    r"^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$",
  );
  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _emailFocus = FocusNode();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _emailFocus.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Column(children:[
      InkWell(
      onTap: (){
        AppColors.GreenGradient;
        FocusScope.of(context).requestFocus(FocusNode());
      },
      onHover: (bool isHovered) {
        AppColors.GreenGradient;
        setState(() {
          _isHovered = isHovered;
        });
      },
      child: TextField(
          cursorColor: AppColors.primaryColor,
          autofocus: false,
          controller: _emailController,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: 'Enter your Email',
            hintStyle: h3size16grey,
            // helperText:"youremail@gmail.com",
            // helperStyle:h2size16green,
            border: UnderlineInputBorder(),
            errorText: _validateEmail(_emailController.text),
          ),
          onChanged: (value) {
            setState(() {
              if (value.isNotEmpty && emailValidatorRegExp.hasMatch(value)) {
                // return 'Enter a valid email';
              } else {
                // Email is invalid
              }
            });
          },
        ),

    ),

      SizedBox(height: 20,),
      Align(
        alignment: Alignment.topLeft,
        child: Text(AppStrings.Password,style: h3size16grey,),
      ),    InkWell(
      onTap: (){
        AppColors.GreenGradient;
        FocusScope.of(context).requestFocus(FocusNode());
      },
      onHover: (bool isHovered) {
        AppColors.GreenGradient;
        setState(() {
          _isHovered = isHovered;
        });
      },
      child: TextField(
        cursorColor: AppColors.primaryColor,
      obscureText: passwordVisible,
      decoration: InputDecoration(
      border: UnderlineInputBorder(),
      hintText: "Enter your Password",
        hintStyle: h3size16grey,
      // helperText:"Password must contain special character",
      // helperStyle:h2size16green,
      suffixIcon: IconButton(
      icon: Icon(passwordVisible
      ? Icons.visibility_outlined
          : Icons.visibility_off_outlined,color: AppColors.Grey,),
      onPressed: () {
      setState(
      () {
      passwordVisible = !passwordVisible;
      },
      );
      },
      ),
      alignLabelWithHint:true,
      filled: false,
      ),
      keyboardType: TextInputType.visiblePassword,
      textInputAction: TextInputAction.done,
      ),
    ),
    SizedBox(height: 20,),
    Align(
      alignment: Alignment.bottomRight,
      child: Padding(
    padding: EdgeInsets.only(right: 10),
    child: InkWell(
        onTap: (){
          AppColors.GreenGradient;

        },
        child: Text(AppStrings.ForgotPassword,style: h3size14black,)),
      ),
    ),
      SizedBox(height: 25,),
      Padding(
        padding: const EdgeInsets.only(right: 10),
        child: PrimaryButton(text: AppStrings.Login, textStyle:
        h2size18, press: (){
          NavigatetoHomeScreen(context);
        },),
      ),
      SizedBox(height: 20,),
      Container(
        width: MediaQuery.of(context).size.width,

        height: 200,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.PinkGradient,
              AppColors.GreenGradient,
              AppColors.PinkGradient,
              AppColors.Whiteheading,
            ],
            stops: [0.0, 0.3, 0.6, 1.0],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Column(

          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
            child: RichText(
              text: TextSpan(
            text: 'Don\'t have an account?',
            style: h3size14black,
            children: <TextSpan>[
              TextSpan(text: ' Sign up',
                  style:h2size14green ,
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {

        Navigator.push(context,MaterialPageRoute(builder:(context) =>Signup()));
                    }
              )
            ]
              ),
            ),
            ),
          ],
        ),
      )

    ],);
  }
}
NavigatetoHomeScreen(BuildContext context){
  Navigator.push(
      context ,
      MaterialPageRoute(builder: (context) =>HomeScreen()));
}
