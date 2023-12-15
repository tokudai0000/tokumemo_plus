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
      body: Column(
        children: [
          Container(
            width: 375,
            height: 812,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(color: Colors.white),
            child: Stack(
              children: [
                // ロゴまたはアイコン
                _buildLogo(137, 49),

                // 同意して始めるボタン
                _buildButton(99, 2140, '同意して始める', Color(0xFFFFC000), 14),
                // プライバシーポリシー ボタン
                _buildButton(202, 2039, 'プライバシーポリシー', Color(0x146750A4), 12),
                // 利用規約 ボタン
                _buildButton(11, 2039, '利用規約', Color(0x146750A4), 12),
                // 利用規約とプライバシーポリシーのタブ
                _buildTab(7, 729, '利用規約'),
                _buildTab(194, 729, 'プライバシーポリシー'),
                // 同意するボタン
                _buildAgreeButton(112, 767),
                // 利用規約とプライバシーポリシーのテキスト
                _buildTextContainer(7, 159),
                // ロゴまたはアイコン
                _buildLogo(137, 49),
              ],
            ),
          ),
        ],
      ),
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

  Widget _buildTextContainer(double left, double top) {
    return Positioned(
      left: left,
      top: top,
      child: Container(
        width: 361,
        height: 563,
        decoration: ShapeDecoration(
          color: Color(0xFFE7E7E7),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(6),
          child: Text(
            'トクメモ＋は「学生の学生による学生のためのアプリ開発」\nを掲げて学生同士で企画、設計、開発に取り組み\n公開リリースすることが出来ました。\n現在は徳島大学院生1人が運営を行っています。\n\n本アプリをご利用するには、\n新しいご利用規約とプライバシーポリシー\nに同意する必要があります。\n\n最終改定日\n2023年2月27日(月)\n\n♪------------------トクメモ＋の歴史------------------♪\n\n2021.8\nUniversityInformationPortal(略称: UnivIP)を、自分だけが使うアプリとして1人で開発を開始\n\n2021.8\n友人も使える様にとトクメモiOS版を限定公開\n\n2021.9 \n 友人からの反響が大きく、トクメモiOS版をAppleStoreに一般公開 \n  \n 2021.10 ',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
              height: 0.14,
              letterSpacing: 0.10,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLogo(double left, double top) {
    return Positioned(
      left: left,
      top: top,
      child: Container(
        width: 100,
        height: 100,
        decoration: ShapeDecoration(
          image: DecorationImage(
            image: NetworkImage("https://via.placeholder.com/100x100"),
            fit: BoxFit.fill,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
      ),
    );
  }
}
