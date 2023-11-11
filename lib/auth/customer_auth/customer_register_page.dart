import 'package:flutter/material.dart';
import 'package:latuni_supabase/agent_screens/agent_login_page.dart';
import 'package:latuni_supabase/my_widgets/my_button.dart';

import '../../my_widgets/auth_widgets.dart';
import '../../my_widgets/my_snackbar.dart';

class CustomerRegisterPage extends StatefulWidget {
  const CustomerRegisterPage({super.key});
  static String pageName = '/customer_register_page';
  @override
  State<CustomerRegisterPage> createState() => _CustomerRegisterPageState();
}

class _CustomerRegisterPageState extends State<CustomerRegisterPage> {
  ///
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldMessengerState> _scaffoldKey =
      GlobalKey<ScaffoldMessengerState>();

  /// name, email, phone, password, confirm-password, and city controllers
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController cityController = TextEditingController();

  /// all focusnodes
  FocusNode focusName = FocusNode();
  FocusNode focusEmail = FocusNode();
  FocusNode focusPhone = FocusNode();
  FocusNode focusPassword = FocusNode();
  FocusNode focusConfirmPassword = FocusNode();
  FocusNode focusCity = FocusNode();

  ///
  bool isPasswordHidden = true;

  ///

  @override
  void dispose() {
    FocusScope.of(context).unfocus();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: ScaffoldMessenger(
        key: _scaffoldKey,
        child: Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              //reverse: true,
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * .05),
                child: Form(
                  key: formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(height: 10),

                      ///logo
                      myLogo(size),

                      /// sign up text
                      const AuthHeaderLabel(labelText: 'S I G N U P'),
                      const SizedBox(height: 40),

                      /// name TFF
                      nameTFF(),
                      const SizedBox(height: 20),

                      /// email TFF
                      emailTFF(),

                      const SizedBox(height: 20),

                      /// phone TFF
                      phoneTFF(),
                      const SizedBox(height: 20),

                      /// password TFF
                      passwordTFF(),
                      const SizedBox(height: 20),

                      /// confirm-password TFF
                      confirmPasswordTFF(),

                      const SizedBox(height: 20),
                      cityTFF(),
                      const SizedBox(height: 10),

                      ///  have an account or not
                      HaveAccountOrNot(
                        account: 'Already Have an Account?',
                        buttonLabel: 'Login',
                        onPressed: () {
                          // todo: later to be sent to login page
                        },
                      ),
                      const SizedBox(height: 20),

                      /// after all validations button to register
                      buttonForRegistration(size),
                      const SizedBox(height: 8),

                      /// go back button
                      //goBackTextButton(context),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  SizedBox myLogo(Size size) {
    return SizedBox(
      height: size.height * .15,
      child: Image.asset(
        'assets/images/logos/rose.png',
        fit: BoxFit.cover,
      ),
    );
  }

  Container nameTFF() {
    return buildContainerForTFF(
      myChild: TextFormField(
        autofocus: true,
        focusNode: focusName,
        controller: nameController,
        decoration:
            buildInputDecoration().copyWith(hintText: 'Enter your name'),
        validator: (value) {
          //todo: how to call validatorMethod (which works the same)
          //todo: from CustomerRegisterPage() here
          if (value!.isEmpty) {
            return 'Please Enter name';
          } else if (value.isValidName() == false) {
            return '    enter valid name only';
          } else if (value.isValidName() == true) {
            return null;
          } else {
            return null;
          }
        },
        onFieldSubmitted: (value) {
          FocusScope.of(context).requestFocus(focusEmail);
        },

        //onChanged: Focus.of(context).requestFocus(focusEmail),
        //onTapOutside: (){},
        autovalidateMode: AutovalidateMode.onUserInteraction,
      ),
    );
  }

  Container emailTFF() {
    return buildContainerForTFF(
      myChild: TextFormField(
        focusNode: focusEmail,
        controller: emailController,
        decoration:
            buildInputDecoration().copyWith(hintText: 'Enter your email'),
        validator: (value) {
          //todo: how to call validatorMethod (which works the same)
          //todo: from CustomerRegisterPage() here
          if (value!.isEmpty || value == '') {
            return 'Please Enter email';
          } else if (value.isValidEmail() == false) {
            return '    enter valid email only';
          } else if (value.isValidEmail() == true) {
            return null;
          } else {
            return null;
          }
        },
        onFieldSubmitted: (value) {
          FocusScope.of(context).requestFocus(focusPhone);
        },
        autovalidateMode: AutovalidateMode.onUserInteraction,
      ),
    );
  }

  Container phoneTFF() {
    return buildContainerForTFF(
      myChild: TextFormField(
        controller: phoneController,
        focusNode: focusPhone,
        keyboardType: TextInputType.number,
        decoration:
            buildInputDecoration().copyWith(hintText: 'Enter your phone'),
        validator: (value) {
          //todo: how to call validatorMethod (which works the same)
          //todo: from CustomerRegisterPage() here
          if (value!.isEmpty || value == '') {
            return 'Please Enter phone';
          } else if (value.isValidPhone() == false) {
            return '    enter valid phone only';
          } else if (value.isValidPhone() == true) {
            return null;
          } else {
            return null;
          }
        },
        onFieldSubmitted: (value) {
          FocusScope.of(context).requestFocus(focusPassword);
        },
        autovalidateMode: AutovalidateMode.onUserInteraction,
      ),
    );
  }

  Container passwordTFF() {
    return buildContainerForTFF(
      myChild: TextFormField(
        focusNode: focusPassword,
        controller: passwordController,
        obscureText: isPasswordHidden,
        decoration: buildInputDecoration().copyWith(
          hintText: 'Enter password',
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                isPasswordHidden = !isPasswordHidden;
              });
            },
            icon: Icon(
                isPasswordHidden ? Icons.remove_red_eye_outlined : Icons.lock),
          ),
        ),
        validator: (value) {
          //todo: how to call validatorMethod (which works the same)
          //todo: from CustomerRegisterPage() here
          if (value!.isEmpty || value == '') {
            return 'Please Enter password';
          } else if (value.length < 6) {
            return 'Please enter at least 6 digits';
          } else {
            return null;
          }
        },
        onFieldSubmitted: (value) {
          FocusScope.of(context).requestFocus(focusConfirmPassword);
        },
        autovalidateMode: AutovalidateMode.onUserInteraction,
      ),
    );
  }

  Container confirmPasswordTFF() {
    return buildContainerForTFF(
      myChild: TextFormField(
        focusNode: focusConfirmPassword,
        controller: confirmPasswordController,
        obscureText: isPasswordHidden,
        decoration: buildInputDecoration().copyWith(
          hintText: 'repeat your password',
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                isPasswordHidden = !isPasswordHidden;
              });
            },
            icon: Icon(
                isPasswordHidden ? Icons.remove_red_eye_outlined : Icons.lock),
          ),
        ),
        validator: (value) {
          //todo: how to call validatorMethod (which works the same)
          //todo: from CustomerRegisterPage() here
          if (value!.isEmpty || value == '') {
            return '  Please re-Enter password';
          } else if (value != passwordController.text) {
            return '  password does not match';
          } else {
            return null;
          }
        },
        onFieldSubmitted: (value) {
          FocusScope.of(context).requestFocus(focusCity);
        },
        autovalidateMode: AutovalidateMode.onUserInteraction,
      ),
    );
  }

  Container cityTFF() {
    return buildContainerForTFF(
      myChild: TextFormField(
        focusNode: focusCity,
        controller: cityController,
        decoration:
            buildInputDecoration().copyWith(hintText: 'Enter your city'),
        validator: (value) {
          //todo: how to call validatorMethod (which works the same)
          //todo: from CustomerRegisterPage() here
          if (value!.isEmpty || value == '') {
            return 'Please Enter name';
          } else if (value.isValidName() == false) {
            return '    enter valid name only';
          } else if (value.isValidName() == true) {
            return null;
          } else {
            return null;
          }
        },
        onFieldSubmitted: (value) {
          FocusScope.of(context).unfocus();
        },
        autovalidateMode: AutovalidateMode.onUserInteraction,
      ),
    );
  }

  MyButton buttonForRegistration(Size size) {
    return MyButton(
        mWidth: double.infinity,
        mHeight: size.height * .08,
        title: Text(
          'R E G I S T E R',
          style: TextStyle(
            fontFamily: 'Playpen',
            fontSize: size.width * .07,
            letterSpacing: 5,
          ),
        ),
        onTapped: () {
          if (formKey.currentState!.validate()) {
            print('valid');
            print(nameController.text.toString());
          } else {
            print('Not Valid');
            MyMessageHandler.showMySnackBar(
                scaffoldKey: _scaffoldKey,
                message: 'Please Fill all the fields above');
          }
        });
  }
}
