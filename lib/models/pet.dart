class Pet {
  final String id;
  final String name;
  final String type;
  final String breed;
  final String ownerId;
  final String? avatarUrl;
  final String? description;
  final DateTime birthDate;
  final double? weight;
  final String? color;
  final List<String> tags;
  final DateTime createdAt;
  final DateTime updatedAt;

  Pet({
    required this.id,
    required this.name,
    required this.type,
    required this.breed,
    required this.ownerId,
    this.avatarUrl,
    this.description,
    required this.birthDate,
    this.weight,
    this.color,
    this.tags = const [],
    required this.createdAt,
    required this.updatedAt,
  });

  factory Pet.fromJson(Map<String, dynamic> json) {
    return Pet(
      id: json['id'] as String,
      name: json['name'] as String,
      type: json['type'] as String,
      breed: json['breed'] as String,
      ownerId: json['ownerId'] as String,
      avatarUrl: json['avatarUrl'] as String?,
      description: json['description'] as String?,
      birthDate: DateTime.parse(json['birthDate'] as String),
      weight: json['weight'] as double?,
      color: json['color'] as String?,
      tags: List<String>.from(json['tags'] ?? []),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'type': type,
      'breed': breed,
      'ownerId': ownerId,
      'avatarUrl': avatarUrl,
      'description': description,
      'birthDate': birthDate.toIso8601String(),
      'weight': weight,
      'color': color,
      'tags': tags,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
    };
  }

  Pet copyWith({
    String? id,
    String? name,
    String? type,
    String? breed,
    String? ownerId,
    String? avatarUrl,
    String? description,
    DateTime? birthDate,
    double? weight,
    String? color,
    List<String>? tags,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Pet(
      id: id ?? this.id,
      name: name ?? this.name,
      type: type ?? this.type,
      breed: breed ?? this.breed,
      ownerId: ownerId ?? this.ownerId,
      avatarUrl: avatarUrl ?? this.avatarUrl,
      description: description ?? this.description,
      birthDate: birthDate ?? this.birthDate,
      weight: weight ?? this.weight,
      color: color ?? this.color,
      tags: tags ?? this.tags,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
} 