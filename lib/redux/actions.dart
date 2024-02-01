import 'package:aquaculture/model/reading.dart';
import 'package:aquaculture/model/user.dart';

class UpdateAuthenticatedAction {
  final bool authenticated;

  UpdateAuthenticatedAction(this.authenticated);
}

class UpdateUserAction {
  final User? user;

  UpdateUserAction(this.user);
}

class UpdateReadingAction {
  final Reading? reading;

  UpdateReadingAction(this.reading);
}
