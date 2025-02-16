import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _currentprompt = '';
  String get currentprompt => _currentprompt;
  set currentprompt(String value) {
    _currentprompt = value;
  }

  String _currimg = '';
  String get currimg => _currimg;
  set currimg(String value) {
    _currimg = value;
  }

  bool _aibool = false;
  bool get aibool => _aibool;
  set aibool(bool value) {
    _aibool = value;
  }

  bool _Offbool = false;
  bool get Offbool => _Offbool;
  set Offbool(bool value) {
    _Offbool = value;
  }

  bool _lbool = false;
  bool get lbool => _lbool;
  set lbool(bool value) {
    _lbool = value;
  }

  bool _officialPostBool = false;
  bool get officialPostBool => _officialPostBool;
  set officialPostBool(bool value) {
    _officialPostBool = value;
  }
}
