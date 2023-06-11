// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class SliderObject {
  final String title;
  final String image;

  SliderObject({
    required this.title,
    required this.image,
  });

  SliderObject copyWith({
    String? title,
    String? image,
  }) {
    return SliderObject(
      title: title ?? this.title,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'image': image,
    };
  }

  factory SliderObject.fromMap(Map<String, dynamic> map) {
    return SliderObject(
      title: map['title'] as String,
      image: map['image'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory SliderObject.fromJson(String source) =>
      SliderObject.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'SliderObject(title: $title, image: $image)';

  @override
  bool operator ==(covariant SliderObject other) {
    if (identical(this, other)) return true;

    return other.title == title && other.image == image;
  }

  @override
  int get hashCode => title.hashCode ^ image.hashCode;
}
