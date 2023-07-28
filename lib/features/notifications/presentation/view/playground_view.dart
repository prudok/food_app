import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/features/notifications/presentation/bloc/notification_bloc.dart';

@RoutePage()
class PlaygroundView extends StatelessWidget {
  const PlaygroundView({super.key});

  @override
  Widget build(BuildContext context) {
    final notificationBloc = BlocProvider.of<NotificationBloc>(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Send Notification Now'),
              onPressed: () => notificationBloc.add(
                const NotificationEvent.setNow(),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              child: const Text('Send Notification In 5 Seconds'),
              onPressed: () => notificationBloc.add(
                const NotificationEvent.setByTime(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
