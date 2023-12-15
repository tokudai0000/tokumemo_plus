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
                  Positioned(
                    left: 99,
                    top: 2140,
                    child: Container(
                      width: 206,
                      height: 31,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              width: double.infinity,
                              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                              decoration: BoxDecoration(color: Color(0xFFFFC000)),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '同意して始める',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w500,
                                      height: 0.10,
                                      letterSpacing: 0.10,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 202,
                    top: 2039,
                    child: Container(
                      width: 186,
                      height: 31,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              width: double.infinity,
                              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                              decoration: BoxDecoration(color: Color(0x146750A4)),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'プライバシーポリシー',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF6750A4),
                                      fontSize: 12,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w500,
                                      height: 0.14,
                                      letterSpacing: 0.10,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 11,
                    top: 2039,
                    child: Container(
                      width: 176,
                      height: 31,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              width: double.infinity,
                              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                              decoration: BoxDecoration(color: Color(0x146750A4)),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '利用規約',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF6750A4),
                                      fontSize: 12,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w500,
                                      height: 0.14,
                                      letterSpacing: 0.10,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 7,
                    top: 729,
                    child: Container(
                      width: 174,
                      height: 30,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
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
                            ),
                          ),
                          Positioned(
                            left: 59,
                            top: 5,
                            child: Text(
                              '利用規約',
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
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 194,
                    top: 729,
                    child: Container(
                      width: 174,
                      height: 30,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
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
                            ),
                          ),
                          Positioned(
                            left: 17,
                            top: 5,
                            child: Text(
                              'プライバシーポリシー',
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
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 112,
                    top: 767,
                    child: Container(
                      width: 150,
                      height: 36,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
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
                            ),
                          ),
                          Positioned(
                            left: 43,
                            top: 8,
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
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 7,
                    top: 159,
                    child: Container(
                      width: 361,
                      height: 563,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 361,
                              height: 563,
                              decoration: ShapeDecoration(
                                color: Color(0xFFE7E7E7),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 6,
                            top: 12.94,
                            child: SizedBox(
                              width: 348,
                              height: 538.19,
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
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 137,
                    top: 49,
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
                  ),
                ],
              ),
            ),
          ],
        ),
    );
  }
}
