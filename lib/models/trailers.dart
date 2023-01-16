class Trailers {
  String name;
  String url;
  Trailers(this.name, this.url);
  factory Trailers.fromJson(Map<String, dynamic> json) {
    return Trailers(json['name'] as String, json['url'] as String);
  }
}
