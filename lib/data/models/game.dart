class Game {
  final int id;
  final String name;
  final String imageId;

  Game({
    required this.id,
    required this.name,
    required this.imageId,
  });

  factory Game.fromJson(Map<String, dynamic> json) {
    return Game(
        id: json['id'],
        name: json['name'] ?? 'Unknown',
        imageId: json['cover']['image_id']);
  }
}
