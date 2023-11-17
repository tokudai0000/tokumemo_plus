import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:tokumemo_plus/app.dart';

// Futureを使うことで、非同期的に
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  late final SharedPreferences sharedPreferences;

  // pubspec.yamlのsdkにて3.0.0以上にする必要がある
  await (
    // 'package:flutter/services.dart'から、画面を縦固定
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]),

    Future(() async {
      sharedPreferences = await SharedPreferences.getInstance();
    }),
  ).wait;

  runApp(
    ProviderScope(
      child: const App(),
    ),
  );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // このウィジェットはアプリケーションのホームページです。これはステートフル（stateful）であり、
  // つまり、以下で定義されるStateオブジェクトを持ち、その見た目に影響を与えるフィールドを含んでいます。

  // このクラスはステートの設定です。これは、親（この場合はアプリウィジェット）によって提供される値
  // （このケースではタイトル）を保持し、Stateのbuildメソッドで使用されます。ウィジェットのサブクラス内の
  // フィールドは常に「final」としてマークされます。

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // このsetStateへの呼び出しは、FlutterフレームワークにこのState内で何かが変更されたことを伝えます。
      // これにより、以下のbuildメソッドが再実行され、表示が更新された値を反映することができます。
      // もし_setCounterを変更したがsetState()を呼び出さなかった場合、buildメソッドは再び呼び出されず、
      // したがって何も起こらないように見えるでしょう。
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // このメソッドは、上記の_incrementCounterメソッドが行うように、setStateが呼び出されるたびに再実行されます。
    //
    // Flutterフレームワークは、buildメソッドの再実行を高速にするように最適化されています。
    // そのため、ウィジェットのインスタンスを個別に変更するのではなく、更新が必要なものを
    // すべて再構築することができます。
    return Scaffold(
      appBar: AppBar(
        // ここでは、App.buildメソッドによって作成されたMyHomePageオブジェクトから値を取得し、
        // それを使用してアプリバーのタイトルを設定します。
        title: Text(widget.title),
      ),
      body: Center(
        // Centerはレイアウトウィジェットです。これは単一の子を取り、
        // 親の中央に配置します。
        child: Column(
          // Columnもレイアウトウィジェットです。子ウィジェットのリストを取り、
          // それらを垂直に配置します。デフォルトでは、自身を水平方向に子ウィジェットに合わせてサイズ調整し、
          // 親と同じ高さになるように試みます。
          //
          // 各ウィジェットのワイヤーフレームを見るために「デバッグペインティング」を呼び出します
          // （コンソールで「p」を押す、Android StudioのFlutterインスペクターで「Toggle Debug Paint」アクションを選択する、
          // またはVisual Studio Codeで「Toggle Debug Paint」コマンドを使用する）。
          //
          // Columnには、自身のサイズを制御し、子ウィジェットを配置するさまざまなプロパティがあります。
          // ここではmainAxisAlignmentを使用して子ウィジェットを垂直方向に中央に配置しています。
          // なぜなら、Columnは垂直なのでメイン軸は垂直軸です（クロス軸は水平軸になります）。
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // この末尾のコンマは、buildメソッドの自動フォーマットをより良くするためのものです。
    );
  }
}
