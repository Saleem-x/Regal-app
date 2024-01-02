import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:regal_app/core/api/endpoints.dart';
import 'package:regal_app/core/constents/colors/kcolors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:regal_app/feature/data/models/login_model/login_model.dart';
import 'package:regal_app/feature/state/bloc/dropsownitems/dropdownitems_bloc.dart';
import 'package:regal_app/feature/state/bloc/login/login_bloc.dart';
import 'package:regal_app/feature/state/bloc/newschemeotp/newschemeotp_bloc.dart';
import 'package:regal_app/feature/state/cubit/mobilevalidator/mobilevalidator_cubit.dart';
import 'package:regal_app/feature/views/auth/widgets/linewidget.dart';
import 'package:regal_app/feature/views/auth/widgets/mobilefield.dart';
import 'package:regal_app/feature/views/auth/widgets/otpfieldwidget.dart';
import 'package:regal_app/feature/views/contactus/contactusscreen.dart';
import 'package:regal_app/feature/views/home/homescreen.dart';
import 'package:regal_app/feature/views/joinnewscheme/joinnewscheme.dart';
import 'package:regal_app/feature/views/newpin/setnewpin.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kbgcolor,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: size.height > 640
            ? AllLoginWidgets(size: size)
            : SingleChildScrollView(
                child: AllLoginWidgets(size: size),
              ),
      ),
    );
  }
}

class AllLoginWidgets extends StatefulWidget {
  const AllLoginWidgets({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  State<AllLoginWidgets> createState() => _AllLoginWidgetsState();
}

final _mobilecontroller = TextEditingController();
final _pincontroller = TextEditingController();
final _formkey = GlobalKey<FormState>();
String otp = '';

class _AllLoginWidgetsState extends State<AllLoginWidgets> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        logger.e(state);
        state.when(
          initialstate: () {},
          loginSuccessState: (user) {
            Navigator.pop(context);
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(user: user),
                ),
                (route) => false);
            otp = '';
            _pincontroller.clear();
          },
          loginFailedState: (issue) {
            Navigator.pop(context);
            if (Platform.isIOS) {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  backgroundColor: kcolorwhite,
                  title: const Text("Alert"),
                  content: Text(issue),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Ok'),
                    )
                  ],
                ),
              );
              // context.read<LoginBloc>().add(
              //       const LoginresetEvent(),
              //     );
            } else {
              showCupertinoDialog(
                context: context,
                builder: (BuildContext context) {
                  return CupertinoAlertDialog(
                    title: Text(issue.split('^')[0]),
                    content: Text(
                      issue.split('^')[1],
                    ),
                    actions: <Widget>[
                      /*  CupertinoDialogAction(
                          child: const Text("Cancel"),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ), */
                      CupertinoDialogAction(
                        child: const Text("OK"),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
              context.read<LoginBloc>().add(
                    const LoginresetEvent(),
                  );
            }
          },
          loginLoadingState: () {
            showDialog(
              barrierDismissible: false,
              context: context,
              builder: (context) {
                return const AlertDialog(
                  surfaceTintColor: Colors.transparent,
                  backgroundColor: Colors.transparent,
                  content: Center(
                    child: CircularProgressIndicator(
                      color: Colors.green,
                    ),
                  ),
                );
              },
            );
          },
        );
      },
      child: Form(
        key: _formkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.only(top: widget.size.height > 640 ? 0 : 40),
              child: SvgPicture.asset(
                'assets/others/regal_logo-optimized.svg',
                width: widget.size.width / 2,
                height: widget.size.height * 0.06,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: widget.size.height * 0.09),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LineWidget(
                    size: widget.size,
                    color2: kcolorblack.withOpacity(.6),
                    color1: kcolorgrey.withOpacity(.0),
                  ),
                  SizedBox(width: widget.size.width * 0.08),
                  Text(
                    'Login',
                    style: TextStyle(
                        color: const Color(0xFF990000),
                        fontWeight: FontWeight.w400,
                        fontSize: 22.sp,
                        letterSpacing: -1),
                  ),
                  SizedBox(width: widget.size.width * 0.08),
                  LineWidget(
                    size: widget.size,
                    color1: kcolorblack.withOpacity(.6),
                    color2: kcolorgrey.withOpacity(.0),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: widget.size.height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Login using mobile number',
                  style: TextStyle(
                    fontSize: 17.sp,
                    color: kcolorblack.withOpacity(.6),
                    fontWeight: FontWeight.w200,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 50.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 90),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Mobile Number',
                    style: TextStyle(
                      fontSize: 13.sp,
                      color: kcolordarkred.withOpacity(.7),
                    ),
                  ),
                ],
              ),
            ),
            // MobileFieldWidget(
            //     size: widget.size, controller: _mobilecontroller),
            CustomMobileField(size: widget.size, controller: _mobilecontroller),
            SizedBox(
              height: widget.size.height * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 90),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'PIN',
                    style: TextStyle(
                      fontSize: 13.sp,
                      color: kcolordarkred.withOpacity(.7),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: widget.size.height * 0.03,
            ),
            LoginPinOtpField(
              password: _pincontroller,
              size: widget.size,
              mobNo: _mobilecontroller,
            ),
            SizedBox(
              height: widget.size.height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SetNewPinScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      'Set New PIN',
                      style: TextStyle(color: kcolordark2),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: widget.size.height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: MaterialButton(
                color: kredbutton,
                height: 30.h,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                minWidth: widget.size.width,
                onPressed: () async {
                  context
                      .read<MobilevalidatorCubit>()
                      .validatemob(_mobilecontroller.text);
                  if (_formkey.currentState!.validate()) {
                    if (_pincontroller.text.length == 4) {
                      context.read<LoginBloc>().add(const AddLoadingEvent());
                      context.read<LoginBloc>().add(
                            UserLoginEvent(
                              logindata: LoginModel(
                                mob: _mobilecontroller.text,
                                pin: _pincontroller.text,
                                datakey: datakey,
                              ),
                            ),
                          );
                      // otp = '';
                    } else {
                      if (!Platform.isAndroid) {
                        await showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            backgroundColor: kcolorwhite,
                            title: const Text("Alert"),
                            content:
                                const Text("please enter 4 Digit Pin number"),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text('Ok'),
                              )
                            ],
                          ),
                        );
                      } else {
                        await showCupertinoDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return CupertinoAlertDialog(
                              title: const Text("Alert"),
                              content: const Text(
                                  "please enter Your Four Digit Pin"),
                              actions: <Widget>[
                                /* CupertinoDialogAction(
                                    child: const Text("Cancel"),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ), */
                                CupertinoDialogAction(
                                  child: const Text("OK"),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      }
                    }
                  }
                },
                child: const Text(
                  'Login',
                  style: TextStyle(color: kcolorwhite, fontSize: 17),
                ),
              ),
            ),
            SizedBox(
              height: widget.size.height * 0.02,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'OR',
                )
              ],
            ),
            SizedBox(
              height: widget.size.height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: MaterialButton(
                color: kgold1,
                height: 30.h,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                minWidth: widget.size.width,
                onPressed: () {
                  context
                      .read<NewschemeotpBloc>()
                      .add(const OtpscreenresetEvent());

                  context
                      .read<DropdownitemsBloc>()
                      .add(const GetAllDropDownEvent());
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const JoinNewSchemeScreen(),
                    ),
                  );
                },
                child: const Text(
                  'Join New Scheme',
                  style: TextStyle(color: kcolorwhite, fontSize: 17),
                ),
              ),
            ),
            SizedBox(
              height: widget.size.height * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Facing any trouble?',
                  style: TextStyle(
                      color: const Color(0xFF646464), fontSize: 10.sp),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ContactUsScreen(),
                        ));

                    // login();
                  },
                  child: Text(
                    'Contact Us',
                    style: TextStyle(
                        color: kredbutton.withOpacity(.9), fontSize: 10.sp),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
    required this.widget,
  });

  final AllLoginWidgets widget;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: kredbutton,
      height: 35,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      minWidth: widget.size.width,
      onPressed: () async {
        context
            .read<MobilevalidatorCubit>()
            .validatemob(_mobilecontroller.text);
        if (_formkey.currentState!.validate()) {
          if (otp.length == 4) {
            context.read<LoginBloc>().add(
                  UserLoginEvent(
                    logindata: LoginModel(
                      mob: _mobilecontroller.text,
                      pin: otp,
                      datakey: datakey,
                    ),
                  ),
                );
            // otp = '';
          } else {
            if (!Platform.isAndroid) {
              await showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  backgroundColor: kcolorwhite,
                  title: const Text("Alert"),
                  content: const Text("please enter Your Four Digit Pin"),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Ok'),
                    )
                  ],
                ),
              );
            } else {
              await showCupertinoDialog(
                context: context,
                builder: (BuildContext context) {
                  return CupertinoAlertDialog(
                    title: const Text("Alert"),
                    content: const Text("please enter Your Four Digit Pin"),
                    actions: <Widget>[
                      CupertinoDialogAction(
                        child: const Text("Cancel"),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      CupertinoDialogAction(
                        child: const Text("OK"),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            }
          }
        }
      },
      child: const Text(
        'Login',
        style: TextStyle(color: kcolorwhite, fontSize: 17),
      ),
    );
  }
}
