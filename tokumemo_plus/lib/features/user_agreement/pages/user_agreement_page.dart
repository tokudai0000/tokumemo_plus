import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:webview_flutter/webview_flutter.dart';

class UserAgreementPage extends ConsumerWidget {
  const UserAgreementPage({super.key});

  static String get pageName => 'user_agreement';
  static String get pagePath => '/$pageName';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        // 縦方向に整列
        child: Column(
          children: [
            // ロゴ
            _buildLogo(),
            // トクメモ＋の歴史について
            _buildHistoryContainer(),

            // 同意するボタン
            _buildAgreeButton(112, 767),



        // // 同意して始めるボタン
        // _buildButton(99, 2140, '同意して始める', Color(0xFFFFC000), 14),
        // // プライバシーポリシー ボタン
        // _buildButton(202, 2039, 'プライバシーポリシー', Color(0x146750A4), 12),
        // // 利用規約 ボタン
        // _buildButton(11, 2039, '利用規約', Color(0x146750A4), 12),
        // // 利用規約とプライバシーポリシーのタブ
        // _buildTab(7, 729, '利用規約'),
        // _buildTab(194, 729, 'プライバシーポリシー'),
        // // 同意するボタン
        // _buildAgreeButton(112, 767),
          ],
        ),
      )
    );
  }

  Widget _buildLogo() {
    return const Row(
      // 画面中央に配置するため
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 50, // 半径を50に設定し、100×100のサイズに相当
          backgroundImage: AssetImage('assets/images/tokumemo_icon.png'),
        ),
      ]
    );
  }

  Widget _buildHistoryContainer() {
    return Container(
        width: 375,
        height: 412,
        child: WebViewWidget(
          controller: WebViewController()
            ..loadRequest(Uri.parse("https://tokumemo.notion.site/81a6f545f13b409c8b6298ad5e03e992")),
        )
    );
  }

  // Widget _buildButton(String text, Color color, {double? fontSize, double? left, double? top}) {
  Widget _buildButton(double left, double top, String text, Color color, double fontSize) {
    return Positioned(
      left: left,
      top: top,
      child: Container(
        width: 206,
        height: 31,
        decoration: ShapeDecoration(
          color: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: fontSize,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
              height: 0.10,
              letterSpacing: 0.10,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTab(double left, double top, String text) {
    return Positioned(
      left: left,
      top: top,
      child: Container(
        width: 174,
        height: 30,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
              height: 0.10,
              letterSpacing: 0.10,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAgreeButton(double left, double top) {
    return Positioned(
      left: left,
      top: top,
      child: Container(
        width: 150,
        height: 36,
        decoration: ShapeDecoration(
          color: Color(0xFFFFC000),
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Center(
          child: Text(
            '同意する',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
              height: 0.08,
              letterSpacing: 0.10,
            ),
          ),
        ),
      ),
    );
  }
}
