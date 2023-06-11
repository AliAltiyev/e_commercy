abstract class BaseViewModel<T>
    implements BaseViewModelInput, BaseViewModelOutput {}

interface class BaseViewModelInput {
  void init() {}
  void dispose() {}
}

interface class BaseViewModelOutput {}
