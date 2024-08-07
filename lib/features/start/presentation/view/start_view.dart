import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_styles.dart';
import '../../../../core/utils/assets.dart';
import '../widget/custom_text_field.dart';
import 'dart:async';
import '../widget/get_started_btn.dart';

class StartView extends StatefulWidget {
  const StartView({super.key});
  @override
  State<StartView> createState() => _StartViewState();
}

class _StartViewState extends State<StartView>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;
  late final TextEditingController _usernameController =
      TextEditingController();
  late final TextEditingController _tableNumberController =
      TextEditingController();
  String _currentText = "All you need in one place";
  bool _showFirstText = true;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    animatedLogo();
    startTextAnimation();
  }

  void animatedLogo() {
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);
    _offsetAnimation = Tween<Offset>(
      begin: Offset.zero,
      end: const Offset(0.0, 0.1),
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );
  }

  void startTextAnimation() {
    _timer = Timer.periodic(
      const Duration(seconds: 3),
      (timer) {
        if (mounted) {
          setState(() {
            _showFirstText = !_showFirstText;
            _currentText = _showFirstText
                ? "All you need in one place"
                : "Enjoy Your Meal";
          });
        }
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    _usernameController.dispose();
    _tableNumberController.dispose();
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                SlideTransition(
                  position: _offsetAnimation,
                  child: AspectRatio(
                    aspectRatio: 1.5,
                    child: Image.asset(Assets.imagesIfood),
                  ),
                ),
                const SizedBox(height: 25),
                AnimatedSwitcher(
                  duration: const Duration(seconds: 1),
                  transitionBuilder:
                      (Widget child, Animation<double> animation) {
                    return FadeTransition(opacity: animation, child: child);
                  },
                  child: Text(
                    _currentText,
                    key: ValueKey<String>(_currentText),
                    style: AppStyles.style18w600,
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 40),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Let\'s get you started',
                    style: AppStyles.style14w500Black.copyWith(
                      color: AppColors.whiteColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 25),
                CustomTextField(
                  controller: _usernameController,
                  hintText: 'Your Name',
                  keyboardType: TextInputType.name,
                ),
                const SizedBox(height: 20),
                CustomTextField(
                  controller: _tableNumberController,
                  hintText: 'Table Number',
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 30),
                GetStartedBtn(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      context.go(
                        '/mainView',
                        extra: {
                          'username': _usernameController.text,
                          'tableNumber': _tableNumberController.text,
                        },
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
