import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'adminAPI/aditem_api.dart';
import 'currentTermVersionAPI/current_term_version_api.dart';
import 'helpMessageAgreeAPI/help_message_agree_api.dart';
import 'numberOfUsersAPI/number_of_users_api.dart';
import 'termTextAPI/term_text_api.dart';
import 'homeEventInfoAPI/home_event_info_api.dart';

part 'api.g.dart';

// ここにapiのエンドポイントを記載します
@RestApi(baseUrl: "https://tokudai0000.github.io/tokumemo_resource/")
abstract class RestClient {

  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;
  //current_term_version.jsonからバージョンを取得
  @GET("api/stub/current_term_version.json")
  Future<CurrentTermVersion> getTermTextVersion();
  //ad_items.jsonから広告を取得
  @GET("api/stub/ad_items.json")
  Future<AdItems> getAdItems();
  //helpmessage_Agree.jsonから大学の規約取得
  @GET("api/stub/helpmessage_agree.json")
  Future<HelpMessageAgree> getHelpMessageAgree();
  //home_event_infos.jsonから行事イベントを取得
  @GET("api/stub/home_event_infos.json")
  Future<HomeEventInfo> getHomeEventInfos();
  //number_of_users.jsonから利用者を取得
  @GET("api/stub/number_of_users.json")
  Future<NumberOfUsers> getNumberOfUsers();
  //term_text.jsonからトクメモ＋の利用規約を取得
  @GET("api/stub/term_text.json")
  Future<TermText> getTermText();
}