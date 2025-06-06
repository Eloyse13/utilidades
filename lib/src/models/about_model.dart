import 'package:flutter/cupertino.dart';

class AboutModel {
  final String photoUrl;
  final List<String> abboutMe;
  final List<socialLink> socialLinks;

  AboutModel({required this.photoUrl, 
  required this.abboutMe,
   required this.socialLinks
   });
}

class socialLinks{
  final String name;
  final IconData icon;
  final Color color;
  final String url;

  socialLinks({
    required this.name,
    required this.icon,
    required this.color,
    required this.url,
  });
}