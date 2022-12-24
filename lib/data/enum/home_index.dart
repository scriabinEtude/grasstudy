import 'package:flutter/material.dart';

enum HomeIndex {
  my(Icon(Icons.person), "마이"),
  search(Icon(Icons.search), "찾아보기"),
  notImpl(Icon(Icons.video_camera_front_rounded), "not impl");

  final Widget icon;
  final String label;

  const HomeIndex(this.icon, this.label);
}
