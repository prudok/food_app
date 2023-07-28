import 'package:auto_route/auto_route.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

@RoutePage()
class PlaygroundView extends StatelessWidget {
  const PlaygroundView({required this.message, super.key});

  final RemoteMessage? message;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('MESSAGE ID: ${message?.messageId}'),
            Text('TITLE: ${message?.notification?.title}'),
            Text('BODY: ${message?.notification?.body}'),
          ],
        ),
      ),
    );
  }
}
