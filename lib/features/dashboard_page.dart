import 'package:flutter/material.dart';
import 'package:flutter_progress_hud/flutter_progress_hud.dart';
import 'package:product/features/dashboard_screen.dart';

class DashboardPage extends StatelessWidget {
  static const routeName = '/dashboard';

  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: Scaffold(
        backgroundColor: Colors.blueAccent,
        body: ProgressHUD(child: const DashboardScreen()),
      ),
    );
  }
}
