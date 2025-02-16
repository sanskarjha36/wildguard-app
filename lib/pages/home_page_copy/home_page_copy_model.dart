import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/comp2_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/request_manager.dart';

import 'home_page_copy_widget.dart' show HomePageCopyWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageCopyModel extends FlutterFlowModel<HomePageCopyWidget> {
  /// Query cache managers for this widget.

  final _postqueryManager = StreamRequestManager<List<AlertsRecord>>();
  Stream<List<AlertsRecord>> postquery({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<AlertsRecord>> Function() requestFn,
  }) =>
      _postqueryManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearPostqueryCache() => _postqueryManager.clear();
  void clearPostqueryCacheKey(String? uniqueKey) =>
      _postqueryManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    /// Dispose query cache managers for this widget.

    clearPostqueryCache();
  }
}
