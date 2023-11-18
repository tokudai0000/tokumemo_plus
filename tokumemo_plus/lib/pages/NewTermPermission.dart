import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:tokumemo_plus/components/TermPermissionWidgets.dart';
import 'package:tokumemo_plus/utils/local_data_handler.dart';
import 'package:tokumemo_plus/pages/Base.dart';
class NewTermsPermissionView extends StatefulWidget{
  const NewTermsPermissionView({super.key});
  @override
  State<NewTermsPermissionView> createState()=>_NewTermsPermissionView();
}
class _NewTermsPermissionView extends State<NewTermsPermissionView>{
  bool _isShow=false;
  //スクロール一位置を取得して一番最後までいった時に規約同意ボタンを出現させる
  //https://kwmt27.net/2018/09/03/flutter-scroll/
  //Scrollコントローラーの初期化
  late final ScrollController _scrollController;
  void _scrollListener() {
    double positionRate =
        _scrollController.offset / _scrollController.position.maxScrollExtent;
    const threshold = 0.8;
    if (positionRate > threshold) {
      setState(() {
        _isShow = true;
      });
    }
    if (positionRate < threshold - 0.05) {
      setState(() {
        _isShow = false;
      });
    }
    if (kDebugMode) {
      print(positionRate);
    }
  }
  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
  }
  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
  Future<dynamic> agereeNewTermAction(String newversion)async{
    //画面遷移中にSnackBarを表示させたい
    //https://qiita.com/MLLB/items/498539380168bf33bc9c
    final snackbar=SnackBar(
      content: const Text('新しい規約に同意しました'),
      action: SnackBarAction(
          label: '閉じる',
          onPressed: (){
          }
          ),
    );
    final LocalDataHandler newVersionUpdateHandler=LocalDataHandler("version");
    var result=newVersionUpdateHandler.setLocalData(newversion);
    return result;
  }
  _privacyPolicyDialog(){
    showDialog(
        context: context,
        builder: (context)=>AlertDialog(
          title: const Text('プライバシーポリシー'),
          content:const PrivacyPolicyWidget(privacyText: 'あああああ'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("閉じる"),
            ),
          ],
        ),
    );
  }
  //TermTextはAPIから取得予定
  String termText="トクメモ＋は「学生の学生による学生のためのアプリ開発」 を掲げて学生同士で企画、設計、開発に取り組み 公開リリースすることが出来ました\n"
      "現在は徳島大学院生1人が運営を行っています。\n"
      "本アプリをご利用するには、 新しいご利用規約とプライバシーポリシー に同意する必要があります。\n"
      "最終改定日 2023年2月27日(月) \n"
      "♪------------------トクメモ＋の歴史------------------♪\n"
      "2021.8 UniversityInformationPortal(略称: UnivIP)を、自分だけが使うアプリとして1人で開発を開始\n"
      "2021.8 友人も使える様にとトクメモiOS版を限定公開 2021.9 友人からの反響が大きく、トクメモiOS版をAppleStoreに一般公開\n"
      "2021.10\n"
      "ああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああ";
  @override
  Widget build(BuildContext context){
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("規約の更新を行いました"),
              Container(
                height: 500,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(10),
                width: double.infinity,
                alignment: Alignment.center,
                child: SingleChildScrollView(
                  padding: RenderErrorBox.padding,
                  controller: _scrollController,
                  child: Text(termText),
                ),
              ),
              Row(
                //ボタンのデザインの参考
                //https://qiita.com/coka__01/items/30716f42e4a909334c9f
                children: [
                  Visibility(
                      visible: !_isShow,
                      child: ElevatedButton(
                        onPressed: ()=>{
                          agereeNewTermAction('0.0.1'),
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context)=>const Base())
                          )
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text('規約に同意する'),
                      ),
                  ),
                  Visibility(
                    visible: _isShow,
                    child: ElevatedButton(
                      onPressed: (){},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black12,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text('規約に同意する'),
                    ),
                    ),
                  ElevatedButton(
                      onPressed: ()=>_privacyPolicyDialog(),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text('プライバシーポリシーを読む')
                  )
                ],
              ),
              ElevatedButton(
                  onPressed:(){},
                  child: const Text(''),
                  ),
            ],
          ),
        ),
    );
  }
}