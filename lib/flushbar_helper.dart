import 'flushbar.dart';
import 'package:flutter/material.dart';

class FlushbarHelper {
  /// Get a success notification flushbar.
  static Flushbar createSuccess(
      {
        required String title,
        Duration duration = const Duration(seconds: 3)}) {
    return Flushbar(
      title: title,
      flushbarPosition: FlushbarPosition.TOP,
      backgroundColor: Color(0xFF159649),
      icon: Icon(
        Icons.check_circle,
        color: Colors.white,
      ),
      shouldIconPulse: false,
      leftBarIndicatorColor: Colors.white,
      duration: duration,
    );
  }

  /// Get an information notification flushbar
  static Flushbar createInformation(
      {
        required String title,
        Duration duration = const Duration(seconds: 3)}) {
    return Flushbar(
      title: title,
      flushbarPosition: FlushbarPosition.TOP,
      backgroundColor: Color(0xFF354052),
      icon: Icon(
        Icons.info_outline,
        color: Colors.white,
      ),
      shouldIconPulse: false,
      leftBarIndicatorColor: Colors.white,
      duration: duration,
    );
  }

  /// Get a error notification flushbar
  static Flushbar createError(
      {
        required String title,
        Duration duration = const Duration(seconds: 3)}) {
    return Flushbar(
      title: title,
      flushbarPosition: FlushbarPosition.TOP,
      backgroundColor: Color(0xFFD93C37),
      icon: Icon(
        Icons.error,
        color: Colors.white,
      ),
      shouldIconPulse: false,
      leftBarIndicatorColor: Colors.white,
      duration: duration,
    );
  }

  /// Get a flushbar that can receive a user action through a button.
  static Flushbar createAction(
      {
        required Widget button,
        required String title,
        Duration duration = const Duration(seconds: 3)}) {
    return Flushbar(
      title: title,
      flushbarPosition: FlushbarPosition.TOP,
      duration: duration,
      mainButton: button,
    );
  }

  // Get a flushbar that shows the progress of a async computation.
  static Flushbar createLoading(
      {
        required LinearProgressIndicator linearProgressIndicator,
        required String title,
        Duration duration = const Duration(seconds: 3),
        AnimationController? progressIndicatorController,
        Color? progressIndicatorBackgroundColor}) {
    return Flushbar(
      title: title,
      flushbarPosition: FlushbarPosition.TOP,
      icon: Icon(
        Icons.cloud_upload,
        color: Colors.blue[300],
      ),
      duration: duration,
      showProgressIndicator: true,
      progressIndicatorController: progressIndicatorController,
      progressIndicatorBackgroundColor: progressIndicatorBackgroundColor,
    );
  }

  /// Get a flushbar that shows an user input form.
  static Flushbar createInputFlushbar({required Form textForm}) {
    return Flushbar(
      duration: null,
    );
  }
}