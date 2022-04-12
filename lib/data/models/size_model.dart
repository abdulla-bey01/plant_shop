class SizeModel {
  final double heightSize;
  final String heightPointer;
  final double widthSize;
  final String widthPointer;
  String get height => 'W $heightSize $heightPointer ';
  String get width => 'x H $widthSize $widthPointer';
  SizeModel({
    required this.heightSize,
    required this.heightPointer,
    required this.widthSize,
    required this.widthPointer,
  });
}
