import 'dart:ffi';

class Country{
  String? name;
  String? description;
  String? flag_image;
  String? capital;
  int? population;

  Country({
    this.name,
    this.description,
    this.flag_image,
    this.capital,
    this.population,
  });

  factory Country.fromJson(Map<String, dynamic> json){
    return Country(
      name: json["name"]  == null ? null : json["name"],
      // title: json["title"] == null ? null : json["title"],
      description: json["description"]  == null ? null : json["description"],
      //description: json["description"] == null ? null : json["description"],
      flag_image: json["flag_image"] == null ? null : json["flag_image"],
      capital: json["capital"] == null ? null : json["capital"],
      population: json["population"] == null ? null : json["population"],
    );
  }
}