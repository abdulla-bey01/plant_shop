class UiConstraints {
  static UiConstraints get instance => _instance ??= UiConstraints._();
  static UiConstraints? _instance;
  UiConstraints._();
  String get menuPath => 'assets/vectors/menu.svg';
  String get bagPath => 'assets/vectors/bag.svg';
  String get searchPath => 'assets/vectors/search.svg';
}
