import 'package:bloc/bloc.dart';
import 'package:food_app/features/notifications/data/repository/notification_repository_impl.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_bloc.freezed.dart';

part 'notification_event.dart';

part 'notification_state.dart';

class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  NotificationBloc(this.notificationRepositoryImpl)
      : super(const NotificationState.initial()) {
    on<SetNow>((event, emit) {
      emit(const NotificationState.setting());
      notificationRepositoryImpl.getNotification();
      emit(const NotificationState.settingComplete());
    });
    on<SetByTime>((event, emit) {
      emit(const NotificationState.setting());
      notificationRepositoryImpl.setNotificationByTime();
      emit(const NotificationState.settingComplete());
    });
  }

  final NotificationRepositoryImpl notificationRepositoryImpl;
}
