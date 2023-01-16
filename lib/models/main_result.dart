import 'package:api_flutter/models/categories.dart';
import 'package:api_flutter/models/trailers.dart';

class MainResult {
  String? id;
  String? name;
  String? description;
  List<Trailers>? trailers;
  String? claim;
  List<Categories>? categories;
  String? mainPicture;
  String? sliderImage;
  String? imdb;
  int? age;
  String? type;
  int? hit;
  int? price;
  String? slug;

  MainResult(
      this.id,
      this.name,
      this.description,
      this.trailers,
      this.claim,
      this.categories,
      this.mainPicture,
      this.sliderImage,
      this.imdb,
      this.age,
      this.type,
      this.hit,
      this.price,
      this.slug);

  MainResult.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    if (json['trailers'] != null) {
      trailers = <Trailers>[];
      json['trailers'].forEach((v) {
        trailers!.add(Trailers.fromJson(v));
      });
    }
    claim = json['claim'];
    if (json['categories'] != null) {
      categories = <Categories>[];
      json['categories'].forEach((v) {
        categories!.add(Categories.fromJson(v));
      });
    }
    mainPicture = json['main_picture'];
    sliderImage = json['slider_image'];
    imdb = json['imdb'].toString();
    age = json['age'];
    type = json['type'];
    hit = json['hit'];
    price = json['price'];
    slug = json['slug'];
  }
}
