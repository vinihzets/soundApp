abstract class BlocState<T> {
  T? data;

  BlocState({required this.data});
}

class BlocStableState extends BlocState {
  BlocStableState({super.data});
}

class BlocEmptyState extends BlocState {
  BlocEmptyState({super.data});
}

class BlocLoadingState extends BlocState {
  BlocLoadingState({super.data});
}

class BlocErrorState extends BlocState {
  BlocErrorState({super.data});
}
