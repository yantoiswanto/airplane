import 'package:airplane/ui/widgets/custom_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:airplane/shared/theme.dart';

void main() => runApp(const MainPage());

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget customBottomNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.only(
            bottom: 30,
            left: defaultMargin,
            right: defaultMargin,
          ),
          height: 60,
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(
              18,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              CustomBottomNavigation(
                imageUrl: 'assets/icon_home.png',
                isSelected: true,
              ),
              CustomBottomNavigation(
                imageUrl: 'assets/icon_booking.png',
              ),
              CustomBottomNavigation(
                imageUrl: 'assets/icon_card.png',
              ),
              CustomBottomNavigation(
                imageUrl: 'assets/icon_setting.png',
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [const Text('Main Page'), customBottomNavigation()],
      ),
    );
  }
}
