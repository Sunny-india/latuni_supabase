import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../my_widgets/auth_widgets.dart';
import '../my_widgets/my_button.dart';

class AgentLoginPage extends StatefulWidget {
  const AgentLoginPage({super.key});
  static String pageName = '/agent_login_page';
  @override
  State<AgentLoginPage> createState() => _AgentLoginPageState();
}

class _AgentLoginPageState extends State<AgentLoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  GlobalKey<ScaffoldMessengerState> scaffoldKey =
      GlobalKey<ScaffoldMessengerState>();

  bool isObscured = true;
  bool isProcessing = false;

  ///===sign in with Google===///
  void signInWithGoogle() {
    print('Sign in With Google');
  }

  ///===sign in with Apple===///

  void signInWithApple() {
    print('Sign in with Apple');
  }

  void agentLogin() {}
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    print(size.width);
    print(size.height);
    return ScaffoldMessenger(
      key: scaffoldKey,
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: SafeArea(
          child: SingleChildScrollView(
            reverse: true,
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            child: Form(
              key: formKey,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(height: size.height * .11),

                    ///logo
                    const Icon(
                      CupertinoIcons.lock,
                      color: Colors.black,
                      size: 100,
                    ),

                    /// Welcome back
                    Text('Welcome!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.grey.shade700, fontSize: 20)),
                    const SizedBox(height: 20),

                    /// email TFF
                    buildContainerForTFF(
                      myChild: TextFormField(
                        controller: emailController,
                        decoration: buildInputDecoration()
                            .copyWith(hintText: 'Enter your email'),
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
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                      ),
                    ),
                    const SizedBox(height: 22),

                    /// password TFF
                    buildContainerForTFF(
                      myChild: TextFormField(
                        controller: passwordController,
                        decoration: buildInputDecoration().copyWith(
                            hintText: 'Enter your password',
                            hintStyle: TextStyle(color: Colors.grey.shade500),
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  isObscured = !isObscured;
                                });
                              },
                              icon: Icon(
                                isObscured
                                    ? CupertinoIcons.eye
                                    : CupertinoIcons.eye_slash,
                                color: Colors.black,
                              ),
                            )),
                        obscureText: isObscured,
                        validator: (value) {
                          //todo: how to use that static method from CustomerRegisterPage;
                          if (value!.isEmpty || value == '') {
                            return 'Please enter password';
                          } else {
                            return null;
                          }
                        },
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                      ),
                    ),
                    const SizedBox(height: 16),

                    /// forgot password
                    const Text('forgot Password?', textAlign: TextAlign.right),
                    const SizedBox(height: 32),

                    /// login button
                    MyButton(
                        mHeight: size.height * .07,
                        title: const Row(
                          children: [
                            Text(
                              'Login',
                              style: TextStyle(
                                  fontSize: 70, color: Colors.black87),
                            ),
                          ],
                        ),
                        onTapped: agentLogin),
                    const SizedBox(height: 22),

                    /// or continue with
                    Row(
                      children: [
                        Expanded(
                            child: Divider(
                          thickness: 0.5,
                          color: Colors.grey.shade400,
                        )),
                        const Text(
                          'Or Continue With',
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Playpen',
                              fontWeight: FontWeight.w500),
                        ),
                        Expanded(
                            child: Divider(
                          thickness: 0.5,
                          color: Colors.grey.shade400,
                        ))
                      ],
                    ),
                    const SizedBox(height: 12),

                    /// google sign-in button
                    /// apple sign-in button
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: [
                    //     SquareContainerForLogo(
                    //       onTapping: signInWithGoogle,
                    //       myHeight: 80,
                    //       myWidth: 80,
                    //       containerColor: Colors.grey.shade300,
                    //       imagePath: 'assets/images/googleLogo.jpg',
                    //     ),
                    //     const MyBox(
                    //       mWidth: 12,
                    //     ),
                    //     SquareContainerForLogo(
                    //       imagePath: 'assets/images/appleLogo.png',
                    //       myHeight: 80,
                    //       myWidth: 80,
                    //       containerColor: Colors.grey.shade300,
                    //       onTapping: signInWithApple,
                    //     )
                    //   ],
                    // ),
                    const SizedBox(height: 32),

                    /// not a member?
                    Row(
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.grey.shade400,
                          ),
                        ),
                        const Text(
                          'Not a member?',
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Playpen',
                              fontWeight: FontWeight.w500),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.grey.shade400,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),

                    /// register now
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: [
                    //     isProcessing
                    //         ? Center(
                    //             child: CircularProgressIndicator(
                    //               color: Colors.grey.shade800,
                    //             ),
                    //           )
                    //         : MyButton(
                    //             onTapping: () {
                    //               Navigator.pushReplacement(context,
                    //                   MaterialPageRoute(builder: (context) {
                    //                 return const CustomerRegisterPage();
                    //               }));
                    //             },
                    //             buttonHeight: 45,
                    //             buttonWidth: 100,
                    //             buttonWidget: const FittedBox(
                    //               child: Text(
                    //                 'Register',
                    //                 style: TextStyle(
                    //                     color: Colors.teal,
                    //                     fontSize: 18,
                    //                     fontWeight: FontWeight.w600),
                    //               ),
                    //             )),
                    //   ],
                    // ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Container buildContainerForTFF({required Widget myChild}) {
  return Container(
    //height: 100,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(
            color: Colors.grey.shade500,
            offset: const Offset(4, 4),
            blurRadius: 2,
            spreadRadius: 1),
        const BoxShadow(
            color: Colors.white,
            offset: Offset(-4, -4),
            blurRadius: 2,
            spreadRadius: 1),
      ],
      gradient: LinearGradient(
          colors: [
            Colors.grey.shade200,
            Colors.grey.shade300,
            Colors.grey.shade400,
            Colors.grey.shade600
          ],
          // begin: Alignment.topLeft,
          //end: Alignment.bottomRight,
          stops: const [
            0.2,
            0.4,
            0.7,
            0.9
          ]),
    ),
    child: myChild,
  );
}

extension ValidName on String {
  bool isValidName() {
    return RegExp(r'^[a-zA-Z]+$').hasMatch(this);
  }
}

extension ValidEmail on String {
  bool isValidEmail() {
    return RegExp(
            r"^[a-zA-Z0-9]+[_\-.]*[a-zA-Z0-9]*@[a-zA-Z]{2,}[.][a-zA-Z]{2,5}$")
        .hasMatch(this);
  }
}

extension ValidPhone on String {
  bool isValidPhone() {
    return RegExp(r'^[6-9]{1}[0-9]{9}$').hasMatch(this);
  }
}
