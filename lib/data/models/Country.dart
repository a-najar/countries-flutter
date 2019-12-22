class Country {
  String name;
  String nativeName;

  Country({

    this.name,
    this.nativeName,

  });

  factory Country.fromJson(Map<String, dynamic> json) {
    return Country(
      name: json['name'],
      nativeName: json['nativeName'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['name'] = this.name;
    data['nativeName'] = this.nativeName;
    return data;
  }
}
