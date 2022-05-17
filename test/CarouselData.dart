import 'package:brcontent/api.dart';

class CarouselData {
  List<Slide> slides;

  CarouselData.fromJson(dynamic data)
      : slides = Slide.listFromJson(data['slides']);

  @override
  String toString() {
    return 'CarouselData{slides: $slides}';
  }
}

class Slide {
  Pointer? image;
  String? subtitle;

  static List<Slide> listFromJson(
    dynamic json) =>
      json is List && json.isNotEmpty
          ? json.map(Slide.fromJson).toList()
          : <Slide>[];

  Slide.fromJson(dynamic json)
      : image = Pointer.fromJson(json['image']) ,
        subtitle = json['subtitle'];

  @override
  String toString() {
    return 'Slide{image: $image, subtitle: $subtitle}';
  }
}
