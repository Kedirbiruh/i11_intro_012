import 'package:flutter/material.dart';
import 'package:flutter_application_2/00_general/config.dart';
import 'package:flutter_application_2/01_local/local_homepage.dart';
import 'package:flutter_application_2/02_distributed/distrubuted_homepage.dart';
import 'package:flutter_application_2/03_global/global_homepage.dart';

const config = Config.local;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => switch (config) {
    Config.local => LocalHomepage(),
    Config.distrubuted => DistributedHomepage(),
    Config.global => GlobalHomepage(),
  };
}
