class Categories {
  String? name;
  String? langCode;
  Categories(this.name, this.langCode);
  Categories.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    langCode = json['lang_code'];
  }
}
