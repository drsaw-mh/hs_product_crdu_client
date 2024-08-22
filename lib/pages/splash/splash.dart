import 'package:flutter/material.dart';

import '../../utils/route_name.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback(
      (timestamp) {
        _getData();
      },
    );
    // TODO: implement initState
    super.initState();
  }

  _getData() async {
    await Future.delayed(const Duration(seconds: 2)).then((timestamp) {
      if (mounted) Navigator.pushReplacementNamed(context, RouteName.home);
    });
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text("Hello"),
    );
  }
}
