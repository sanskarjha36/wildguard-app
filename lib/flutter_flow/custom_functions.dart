import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

String isLatString(
  LatLng location,
  bool isLat,
) {
  // return latitude or longitude separately based on isLat flag
  if (isLat) {
    return location.latitude.toString(); //
  } else {
    return location.longitude.toString(); //
  }
}

int? getDist(
  LatLng place1,
  LatLng? place2,
) {
  // give distance between place1 and palce2
  if (place2 == null) {
    return null;
  }

  final double earthRadius = 6371.0; // in kilometers

  double lat1 = math.pi * place1.latitude / 180.0;
  double lon1 = math.pi * place1.longitude / 180.0;
  double lat2 = math.pi * place2.latitude / 180.0;
  double lon2 = math.pi * place2.longitude / 180.0;

  double dLat = lat2 - lat1;
  double dLon = lon2 - lon1;

  double a = math.sin(dLat / 2) * math.sin(dLat / 2) +
      math.cos(lat1) * math.cos(lat2) * math.sin(dLon / 2) * math.sin(dLon / 2);
  double c = 2 * math.atan2(math.sqrt(a), math.sqrt(1 - a));

  double distance = earthRadius * c;

  return distance.toInt();
}

String? replaceSTR(String message) {
  // take string and replace * with ""
  return message.replaceAll('*', '');
}
