import 'package:mobx/mobx.dart';

part 'loading_state.g.dart';

class LoadingState = LoadingStateBase with _$LoadingState;

abstract class LoadingStateBase with Store {
  @observable
  bool _isLoading = false;

  bool get isLoading => _isLoading;

  @action
  Future<void> toggleLoading({
    bool val = true,
  }) async {
    _isLoading = val;
  }
}
