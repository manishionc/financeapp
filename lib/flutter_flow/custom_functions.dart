import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

int? newCustomFunction(List<int>? trans) {
  // additio of a integer list
  var status = 0;
  if (trans != null && trans.length > 0) {
    trans.forEach((v) {
      status = status + v;
    });
    return status;
  }
  return null;
}
