import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../Components/PrimaryButton.dart';
import '../../Config/Colors.dart';
import '../../Config/TextStyle.dart';
import '../../Config/strings.dart';
import '../EmailLogin/LoginWithEmail.dart';
import '../SignIns/SignIn.dart';
class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}
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
  }bool _isValidEmail(String email) {
  // Use your email validation logic here
  // For simplicity, I'm using a basic RegExp pattern
  RegExp emailValidatorRegExp =
  RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
  return emailValidatorRegExp.hasMatch(email);
}

  RegExp emailValidatorRegExp = RegExp(
    r"^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$",
  );

class _SignupFormState extends State<SignupForm> {
  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _emailFocus = FocusNode();
  }
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: (){
            AppColors.GreenGradient;
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: TextField(
            cursorColor: AppColors.primaryColor,
            autofocus: false,

            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              hintText: 'Enter your Username',
              hintStyle: h3size16grey,
              // helperText:"youremail@gmail.com",
              // helperStyle:h2size16green,
              border: UnderlineInputBorder(),

            ),
            onChanged: (value) {
              setState(() {

              });
            },
          ),
        ),
SizedBox(height: 20,),


        Align(
          alignment: Alignment.topLeft,
          child: Text(AppStrings.Email,style: h3size16grey,),
        ),
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
            // : _emailController.text.isNotEmpty &&
            //     _isValidEmail(_emailController.text)
            //     ? Icon(Icons.check, color: Colors.green) // Show tick icon for valid email
            //     : null, // Hide icon when email is not valid
            decoration: InputDecoration(
              hintText: 'Enter your Email',
              hintStyle: h3size16grey,
    suffixIcon:  _emailController.text.isNotEmpty &&
        _isValidEmail(_emailController.text)
        ? Icon(Icons.check, color: Colors.green) // Show tick icon for valid email
        : null, // Hide icon when email is not valid
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
        ),
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
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: EdgeInsets.only(right: 40),
            child: RichText(
              text: TextSpan(
                  text: 'By continuing you agree to our',
                  style: h3size14black,
                  children: <TextSpan>[
                    TextSpan(text: 'Terms of service',
                        style:h2size14green ,
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {

                            // Navigator.push(context,MaterialPageRoute(builder:(context) =>Signup()));
                          }
                    ),
                    TextSpan(
                      text: ' and'
                    ),
                    TextSpan(text: ' Privacy Policy',
                        style:h2size14green ,
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {

                            // Navigator.push(context,MaterialPageRoute(builder:(context) =>Signup()));
                          }
                    ),
                  ]
              ),
            ),
          ),
        ),

        SizedBox(height: 25,),
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
            children:[ Padding(
              padding: const EdgeInsets.only(right: 10),
              child: PrimaryButton(text: AppStrings.SignUp, textStyle:
              h2size18, press: (){

              },),

            ),
              SizedBox(height: 10,),
              Padding
                (
                padding: EdgeInsets.symmetric(vertical: 10),
                child: RichText(
                  text: TextSpan(
                      text: 'Already have an account?',
                      style: h3size14black,
                      children: <TextSpan>[
                        TextSpan(text: 'Sign In',
                            style:h2size14green ,
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {

                                Navigator.push(context,MaterialPageRoute(builder:(context) =>LoginWithEmail()));
                              }
                        )
                      ]
                  ),
                ),
              ),

            ]
          ),
        ),

      ],
    );

  }
}
