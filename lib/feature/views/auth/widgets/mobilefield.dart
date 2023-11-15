import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:regal_app/core/constents/colors/kcolors.dart';
import 'package:flutter/services.dart';
import 'package:regal_app/feature/state/cubit/mobilevalidator/mobilevalidator_cubit.dart';

class MobileFieldWidget extends StatelessWidget {
  const MobileFieldWidget({
    super.key,
    required this.size,
    required this.controller,
  });

  final Size size;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40, right: 40),
      child: Row(
        children: [
          const SizedBox(
            child: Icon(FontAwesomeIcons.phone),
          ),
          SizedBox(
            width: size.width * 0.07,
          ),
          Expanded(
            child: TextFormField(
              controller: controller,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'please enter mobile number';
                } else if (value.length < 10) {
                  return 'please enter valid mobile number';
                } else {
                  return null;
                }
              },
              keyboardType: TextInputType.number,
              inputFormatters: [
                LengthLimitingTextInputFormatter(10),
                FilteringTextInputFormatter.digitsOnly
              ],
              decoration: const InputDecoration(
                isDense: true,
                prefixIcon: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('+91  ', textAlign: TextAlign.left),
                  ],
                ),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFD1D1D1),
                  ),
                ),
                disabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFD1D1D1),
                  ),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFD1D1D1),
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFD1D1D1),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomMobileField extends StatelessWidget {
  final Size size;
  final TextEditingController controller;

  const CustomMobileField(
      {super.key, required this.size, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40, right: 40),
      child: Row(
        children: [
          SizedBox(
            child: SvgPicture.asset(
              'assets/others/history.svg',
            ),
          ),
          SizedBox(
            width: size.width * 0.07,
          ),
          Expanded(
            child: BlocBuilder<MobilevalidatorCubit, MobilevalidatorState>(
              builder: (context, state) {
                return TextFormField(
                  controller: controller,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'please enter mobile number';
                      // return '';
                    } else if (value.length < 10) {
                      return 'please enter valid mobile number';
                      // return '';
                    } else {
                      return null;
                    }
                  },
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(10),
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  onTapOutside: (event) {
                    // context
                    //     .read<MobilevalidatorCubit>()
                    //     .validatemob(controller.text);
                  },
                  decoration: InputDecoration(
                    hintText: 'Mobile Number',
                    hintStyle: const TextStyle(color: Color(0xFFD1D1D1)),
                    isDense: false,
                    suffixIcon: state.when(
                      mobilevallidState: () {
                        return const SizedBox.shrink();
                      },
                      mobileinvalidState: (message) => IconButton(
                        tooltip: message,
                        onPressed: () {},
                        icon: const Icon(
                          Icons.info,
                          color: kredbutton,
                        ),
                      ),
                    ),
                    prefixIcon: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '+91  ',
                          textAlign: TextAlign.left,
                          style: TextStyle(color: kcolorblack.withOpacity(.8)),
                        ),
                      ],
                    ),
                    border: const UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFD1D1D1),
                      ),
                    ),
                    disabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFD1D1D1),
                      ),
                    ),
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFD1D1D1),
                      ),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFD1D1D1),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
