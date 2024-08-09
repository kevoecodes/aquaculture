import 'package:aquaculture/model/reading.dart';
import 'package:redux/redux.dart';
import 'package:aquaculture/redux/app_state.dart';
import 'package:aquaculture/redux/reducer.dart';

Store<AppState> store = Store<AppState>(appReDucer,
    initialState: AppState(
        authenticated: false,
        reading: Reading('0', '0', '0', '0', '0', '0', '0')));
