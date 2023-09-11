class Category {
  final int id;
  final String name;
  final String slug;
  final String icon;
  final int parent_id;
  final int position;
  final String createdAt;
  final String updatedAt;
  final int homeStatus;
  final int priority;
  List<Category> sub;

  Category({
    required this.id,
    required this.name,
    required this.slug,
    required this.icon,
    required this.parent_id,
    required this.position,
    required this.createdAt,
    required this.updatedAt,
    required this.homeStatus,
    required this.priority,
    required this.sub,
  });

  factory Category.fromJson(Map<String, dynamic> json) {
    List<Category> _ch = [];
    if (json['childes'] != null) {
      var chil = json['childes'] as List;
      _ch = chil.map((tagsjon) => Category.fromJson(tagsjon)).toList();
    } else {
      _ch = [];
    }
    String icon = json['icon'] ?? '';
    return Category(
        id: json['id'],
        name: json['name'],
        slug: json['slug'],
        icon: icon,
        parent_id: json['parent_id'],
        position: json['position'],
        createdAt: json['created_at'],
        updatedAt: json['updated_at'],
        homeStatus: json['home_status'],
        priority: json['priority'],
        sub: _ch);
  }
}
