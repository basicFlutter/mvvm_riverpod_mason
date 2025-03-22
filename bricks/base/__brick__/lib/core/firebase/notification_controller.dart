import 'dart:isolate';
import 'dart:ui';

import 'package:awesome_notifications/awesome_notifications.dart';

import '../../main_prod.dart';

class NotificationController {
  bool? _initialized;
  NotificationController() {
    ReceivePort port = ReceivePort();
    IsolateNameServer.registerPortWithName(
      port.sendPort,
      'background_notification_action',
    );

    port.listen((var received) async {
      logger.w(received);
      onSilentActionHandle(received);
    });
    _initialized = true;
  }

  @pragma("vm:entry-point")
  Future<void> onSilentActionHandle(ReceivedAction received) async {
    logger.e(_initialized);
    if (!_initialized!) {
      SendPort? uiSendPort =
      IsolateNameServer.lookupPortByName('background_notification_action');
      if (uiSendPort != null) {
        uiSendPort.send(received);
        return;
      }
    }

    await _handleBackgroundAction(received);
  }

  static Future<void> _handleBackgroundAction(ReceivedAction received) async {

  }

  /// Use this method to detect when a new notification or a schedule is created
  @pragma("vm:entry-point")
  static Future<void> onNotificationCreatedMethod(
      ReceivedNotification receivedNotification) async {
    logger.i("onNotificationCreatedMethod");
  }

  /// Use this method to detect every time that a new notification is displayed
  @pragma("vm:entry-point")
  static Future<void> onNotificationDisplayedMethod(
      ReceivedNotification receivedNotification) async {
    logger.i("onNotificationDisplayedMethod");

    // Your code goes here
  }

  /// Use this method to detect if the user dismissed a notification
  @pragma("vm:entry-point")
  static Future<void> onDismissActionReceivedMethod(
      ReceivedAction receivedAction) async {
    logger.i("onDismissActionReceivedMethod");
    // Your code goes here
  }

  /// Use this method to detect when the user taps on a notification or action button
  @pragma("vm:entry-point")
  static Future<void> onActionReceivedMethod(
      ReceivedAction receivedAction,
      ) async {
    logger.i("onActionReceivedMethod");
  }
}