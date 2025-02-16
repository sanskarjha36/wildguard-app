import '/components/comp1_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'comp2_model.dart';
export 'comp2_model.dart';

class Comp2Widget extends StatefulWidget {
  const Comp2Widget({super.key});

  @override
  State<Comp2Widget> createState() => _Comp2WidgetState();
}

class _Comp2WidgetState extends State<Comp2Widget> {
  late Comp2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Comp2Model());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        wrapWithModel(
          model: _model.comp1Model1,
          updateCallback: () => safeSetState(() {}),
          child: Comp1Widget(),
        ),
        wrapWithModel(
          model: _model.comp1Model2,
          updateCallback: () => safeSetState(() {}),
          child: Comp1Widget(),
        ),
        wrapWithModel(
          model: _model.comp1Model3,
          updateCallback: () => safeSetState(() {}),
          child: Comp1Widget(),
        ),
      ],
    );
  }
}
