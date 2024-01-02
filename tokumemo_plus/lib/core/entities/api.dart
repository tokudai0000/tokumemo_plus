import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'encoder.dart';
part 'api.g.dart';

// ここにapiのエンドポイントを記載します
@RestApi(baseUrl: "https://tokudai0000.github.io/tokumemo_resource/")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;
  @GET("api/stub/current_term_version.json")
  Future<CurrentTermVersion> getTermTextVersion();
  @GET("api/stub/ad_items.json")
  Future<AdItems> getAdItems();
  @GET("")
}