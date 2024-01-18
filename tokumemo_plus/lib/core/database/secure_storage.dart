import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter/material.dart';

class SecureStorageController{
  final _keyTextController = TextEditingController();
  final _valueTextController = TextEditingController();
}
class SecureStorage{
  final _storage = const FlutterSecureStorage();

}