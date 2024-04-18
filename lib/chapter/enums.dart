import 'dart:io';

enum STATE {
  loading,
  successfull,
  error;
}

Kline() {
  List<STATE> k = [STATE.error, STATE.loading];

  STATE pageState = STATE.loading;

  switch (pageState) {
    case STATE.error:
      print('Error occured');
      break;
    case STATE.successfull:
      print('Successfully created');
      break;
    case STATE.loading:
      print('Loading ......');
      break;
    default:
      print('No Network');
      break;
  }
}
