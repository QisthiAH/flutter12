// ignore_for_file: public_member_api_docs, sort_constructors_first

part of '_index.dart';

class Product {
  final String id;
  final String name;
  final int price;
  final int quantity;
  final String createdAt;
  final String updatedAt;
  Product({
    this.id = '',
    this.name = '',
    this.price = 0,
    this.quantity = 0,
    this.createdAt = '',
    this.updatedAt = '',
  });

  static Product random() {
    return Product(
      id: UniqueKey().toString().substring(2, 7),
      name: generateWordPairs().take(2).join(' '),
      price: Random().nextInt(99999999),
      quantity: Random().nextInt(999),
      createdAt: DateTime.now().toString(),
    );
  }

  static Product init() {
    return Product(
      id: '00000',
      name: 'Laptop',
      price: 10000000,
      quantity: 50,
      createdAt: DateTime.now().toString(),
    );
  }

  Product copyWith({
    String? id,
    String? name,
    int? price,
    int? quantity,
    String? createdAt,
    String? updatedAt,
  }) {
    return Product(
      id: id ?? this.id,
      name: name ?? this.name,
      price: price ?? this.price,
      quantity: quantity ?? this.quantity,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'price': price,
      'quantity': quantity,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: (map['id'] ?? '') as String,
      name: (map['name'] ?? '') as String,
      price: (map['price'] ?? 0) as int,
      quantity: (map['quantity'] ?? 0) as int,
      createdAt: (map['createdAt'] ?? '') as String,
      updatedAt: (map['updatedAt'] ?? '') as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) => Product.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Product(id: $id, name: $name, price: $price, quantity: $quantity, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(covariant Product other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.price == price &&
        other.quantity == quantity &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode {
    return id.hashCode ^ name.hashCode ^ price.hashCode ^ quantity.hashCode ^ createdAt.hashCode ^ updatedAt.hashCode;
  }
}

// class Product {
//   String id;
//   String name;
//   int price;
//   int quantity;
//   String createdAt;
//   String updatedAt;
//   Product({
//     this.id = '',
//     this.name = '',
//     this.price = 0,
//     this.quantity = 0,
//     this.createdAt = '',
//     this.updatedAt = '',
//   });

//   static Product init() {
//     return Product(
//       id: '001',
//       name: 'sepatu',
//       price: 300000,
//       quantity: 40,
//       createdAt: DateTime.now().toString(),
//       updatedAt: (''),
//     );
//   }

//   static Product random() {
//     return Product(
//       id: '002',
//       name: 'tas sekolah',
//       price: 150000,
//       quantity: 10,
//       createdAt: DateTime.now().toString(),
//       updatedAt: (''),
//     );
//   }

//   Product copyWith({
//     String? id,
//     String? name,
//     int? price,
//     int? quantity,
//     String? createdAt,
//     String? updatedAt,
//   }) {
//     return Product(
//       id: id ?? this.id,
//       name: name ?? this.name,
//       price: price ?? this.price,
//       quantity: quantity ?? this.quantity,
//       createdAt: createdAt ?? this.createdAt,
//       updatedAt: updatedAt ?? this.updatedAt,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'id': id,
//       'name': name,
//       'price': price,
//       'quantity': quantity,
//       'createdAt': createdAt,
//       'updatedAt': updatedAt,
//     };
//   }

//   factory Product.fromMap(Map<String, dynamic> map) {
//     return Product(
//       id: (map['id'] ?? '') as String,
//       name: (map['name'] ?? '') as String,
//       price: (map['price'] ?? 0) as int,
//       quantity: (map['quantity'] ?? 0) as int,
//       createdAt: (map['createdAt'] ?? '') as String,
//       updatedAt: (map['updatedAt'] ?? '') as String,
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory Product.fromJson(String source) => Product.fromMap(json.decode(source) as Map<String, dynamic>);

//   @override
//   String toString() {
//     return 'Product(id: $id, name: $name, price: $price, quantity: $quantity, createdAt: $createdAt, updatedAt: $updatedAt)';
//   }

//   @override
//   bool operator ==(covariant Product other) {
//     if (identical(this, other)) return true;

//     return other.id == id &&
//         other.name == name &&
//         other.price == price &&
//         other.quantity == quantity &&
//         other.createdAt == createdAt &&
//         other.updatedAt == updatedAt;
//   }

//   @override
//   int get hashCode {
//     return id.hashCode ^ name.hashCode ^ price.hashCode ^ quantity.hashCode ^ createdAt.hashCode ^ updatedAt.hashCode;
//   }
// }
