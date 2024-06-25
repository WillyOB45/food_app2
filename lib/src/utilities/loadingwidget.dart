import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

Widget loadingWidget() {
  return Center(
      child: LoadingAnimationWidget.staggeredDotsWave(
          color: const Color(0xffeb3254), size: 25));
}
