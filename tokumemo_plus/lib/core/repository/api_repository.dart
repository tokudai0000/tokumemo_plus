import 'package:dio/dio.dart';
import 'package:tokumemo_plus/core/repository/adminAPI/aditem_api.dart';
import 'package:tokumemo_plus/core/repository/currentTermVersionAPI/current_term_version_api.dart';
import 'package:tokumemo_plus/core/repository/helpMessageAgreeAPI/help_message_agree_api.dart';
import 'package:tokumemo_plus/core/repository/homeEventInfoAPI/home_event_info_api.dart';
import 'package:tokumemo_plus/core/repository/numberOfUsersAPI/number_of_users_api.dart';
import 'package:tokumemo_plus/core/repository/termTextAPI/term_text_api.dart';

import './api_result.dart';
import './api.dart';
abstract class _ApiRepository {
  Future<Result<AdItems>> getAdItems();
  Future<Result<CurrentTermVersion>> getTermTextVersion();
  Future<Result<HelpMessageAgree>> getHelpMessageAgree();
  Future<Result<HomeEventInfo>> getHomeEventInfos();
  Future<Result<NumberOfUsers>>getNumberOfUsers();
  Future<Result<TermText>>getTermText();
}
class ApiRepository implements _ApiRepository {
  final RestClient _client;
  ApiRepository([RestClient? client]):_client=client??RestClient(Dio());
  @override
  Future<Result<AdItems>>getAdItems(){
    return _client.getAdItems()
        .then((value) => Result<AdItems>.success(value))
        .catchError((error)=>Result<AdItems>.failure(error));
  }
  @override
  Future<Result<CurrentTermVersion>>getTermTextVersion(){
    return _client.getTermTextVersion()
        .then((value) => Result<CurrentTermVersion>.success(value))
        .catchError((error)=>Result<CurrentTermVersion>.failure(error));
  }
  @override
  Future<Result<HelpMessageAgree>>getHelpMessageAgree(){
    return _client.getHelpMessageAgree()
        .then((value) => Result<HelpMessageAgree>.success(value))
        .catchError((error)=>Result<HelpMessageAgree>.failure(error));
  }
  @override
  Future<Result<HomeEventInfo>>getHomeEventInfos(){
    return _client.getHomeEventInfos()
        .then((value) => Result<HomeEventInfo>.success(value))
        .catchError((error)=>Result<HomeEventInfo>.failure(error));
  }
  @override
  Future<Result<NumberOfUsers>> getNumberOfUsers(){
    return _client.getNumberOfUsers()
        .then((value) => Result<NumberOfUsers>.success(value))
        .catchError((error)=>Result<NumberOfUsers>.failure(error));
  }
  @override
  Future<Result<TermText>>getTermText(){
    return _client.getTermText()
        .then((value) => Result<TermText>.success(value));
  }
}