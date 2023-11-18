import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:tokumemo_plus/api/getDeliverdAppVersion.dart';
import 'package:tokumemo_plus/utils/check_new_terms.dart';
import 'package:tokumemo_plus/pages/Base.dart';
import 'package:tokumemo_plus/pages/NewTermPermission.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
void main() {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isCheckedNewTerm=false;
  late String deliverdVersion;
  bool _isLoading=true;
  @override
  void initState() {
    super.initState();
    Future(() async {
      deliverdVersion=await getDeliverdAppVersion();
      _isCheckedNewTerm=await compareNewTerms(deliverdVersion as Future<String>);
      setState(() {
        FlutterNativeSplash.remove();
        _isCheckedNewTerm;
        _isLoading=false;
      });
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:  Stack(
        children: [
          Visibility(
            visible: !_isLoading,
              child: _isCheckedNewTerm?const Base():const NewTermsPermissionView(),
          ),
          Visibility(
            visible: _isLoading,
              child: const CircularProgressIndicator(),
          ),
        ],
      )
    );
  }

}
