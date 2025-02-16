import '/components/comp1_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'comp2_widget.dart' show Comp2Widget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Comp2Model extends FlutterFlowModel<Comp2Widget> {
  ///  State fields for stateful widgets in this component.

  // Model for comp1 component.
  late Comp1Model comp1Model1;
  // Model for comp1 component.
  late Comp1Model comp1Model2;
  // Model for comp1 component.
  late Comp1Model comp1Model3;

  @override
  void initState(BuildContext context) {
    comp1Model1 = createModel(context, () => Comp1Model());
    comp1Model2 = createModel(context, () => Comp1Model());
    comp1Model3 = createModel(context, () => Comp1Model());
  }

  @override
  void dispose() {
    comp1Model1.dispose();
    comp1Model2.dispose();
    comp1Model3.dispose();
  }
}
