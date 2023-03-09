// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ressources_relationnel/screens/guest/Auth.dart';
import 'package:ressources_relationnel/screens/guest/Accueille.dart';
import 'package:ressources_relationnel/screens/guest/Ressources.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFD8E5F9),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 5,
          backgroundColor: Color(0xFFD8E5F9),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RessourcesScreen()),
                  );
                },
                child: Icon(
                  Icons.apps,
                  color: Colors.black,
                  size: 40.0,
                ),
              ),

              InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AccueilleScreen()),
                  );
                },
                child: Ink.image(
                  fit: BoxFit.cover, // Fixes border issues
                  width: 75,
                  height: 40,
                  image: AssetImage(
                    'images/logo.png',
                  ),
                ),
              ),

              // ignore: prefer_const_literals_to_create_immutables

              InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const AuthScreen()),
                  );
                },
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 20,
                  backgroundImage: NetworkImage(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cb/The_Blue_Marble_%28remastered%29.jpg/280px-The_Blue_Marble_%28remastered%29.jpg',
                  ),
                ),
              ),
            ],
          ),
        ),
        body: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(
              horizontal: 10.0,
            ),
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  // ignore: prefer_const_literals_to_create_immutables
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DemoIconToggleButton extends StatefulWidget {
  const DemoIconToggleButton(
      {required this.isEnabled, this.getDefaultStyle, super.key});

  final bool isEnabled;
  final ButtonStyle? Function(bool, ColorScheme)? getDefaultStyle;

  @override
  State<DemoIconToggleButton> createState() => _DemoIconToggleButtonState();
}

class _DemoIconToggleButtonState extends State<DemoIconToggleButton> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    final ColorScheme colors = Theme.of(context).colorScheme;
    final VoidCallback? onPressed = widget.isEnabled
        ? () {
            setState(() {
              selected = !selected;
            });
          }
        : null;
    ButtonStyle? style;
    if (widget.getDefaultStyle != null) {
      style = widget.getDefaultStyle!(selected, colors);
    }

    return IconButton(
      isSelected: selected,
      icon: const Icon(Icons.settings_outlined),
      selectedIcon: const Icon(Icons.settings),
      onPressed: onPressed,
      style: style,
    );
  }
}

ButtonStyle enabledFilledButtonStyle(bool selected, ColorScheme colors) {
  return IconButton.styleFrom(
    foregroundColor: selected ? colors.onPrimary : colors.primary,
    backgroundColor: selected ? colors.primary : colors.surfaceVariant,
    disabledForegroundColor: colors.onSurface.withOpacity(0.38),
    disabledBackgroundColor: colors.onSurface.withOpacity(0.12),
    hoverColor: selected
        ? colors.onPrimary.withOpacity(0.08)
        : colors.primary.withOpacity(0.08),
    focusColor: selected
        ? colors.onPrimary.withOpacity(0.12)
        : colors.primary.withOpacity(0.12),
    highlightColor: selected
        ? colors.onPrimary.withOpacity(0.12)
        : colors.primary.withOpacity(0.12),
  );
}
