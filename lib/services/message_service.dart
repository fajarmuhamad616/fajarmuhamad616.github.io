import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

class MessageService {
  static Future<bool> sendMessage({
    required String sender,
    required String email,
    required String message,
  }) async {
    try {
      String? appCheckToken = await FirebaseAppCheck.instance.getToken();
      if (appCheckToken != null) {
        await FirebaseFirestore.instance.collection('messages').add({
          'sender': sender.trim(),
          'email': email.trim(),
          'message': message.trim(),
          'SendAt': FieldValue.serverTimestamp(),
          'token': appCheckToken,
        });
        return true;
      }
    } catch (e) {
      print("get AppCheck error: " + e.toString());
    }
    return false;
  }

  static sendNotification(String ip) async {
    try {
      String? appCheckToken = await FirebaseAppCheck.instance.getToken();
      if (appCheckToken != null) {
        FirebaseFirestore.instance.collection('notification').add({
          'address': ip,
          'SendAt': FieldValue.serverTimestamp(),
          'token': appCheckToken,
        });
      }
    } catch (e) {
      print("get AppCheck error: " + e.toString());
    }
  }
}

// only use to verify in server
Future<bool> isRecaptchaSuccess(String recaptchaToken) async {
  final secretKey = 'YOUR_RECAPTCHA_SECRET_KEY';
  final url = 'https://www.google.com/recaptcha/api/siteverify';
  final response = await http.post(Uri.parse(url), body: {
    'secret': secretKey,
    'response': recaptchaToken,
  });

  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);
    return data['success'] == true;
  } else {
    return false;
  }
}

Future<bool> downloadCV() {
  String url =
      'https://drive.google.com/drive/folders/1X28k_UVTyccPXwg43MwqZ3SyXnnYuaUR?usp=sharing';
  return launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
}
