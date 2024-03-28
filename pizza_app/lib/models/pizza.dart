class Pizza {
  final int id;
  final String? name;
  final String? countryOrigin;
  final String? price;
  final String? image;
  final String? tags;

  Pizza({
    required this.id,
    required this.name,
    required this.countryOrigin,
    required this.price,
    required this.image,
    required this.tags,
  });

  factory Pizza.fromJson(Map<String, dynamic> json) {
    return Pizza(
      id: json['id'] ?? -1,
      name: json['name'],
      countryOrigin: json['country_origin'],
      price: json['price'],
      image: json['image'],
      tags: json['tags'],
    );
  }
}