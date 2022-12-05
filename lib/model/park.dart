class Park {
  String? name;
  String? address;
  String? image;
  String? description;
  bool? bookmark;
  String? id;

  Park(
      {this.name,
      this.address,
      this.image,
      this.description,
      this.bookmark,
      this.id});

  Park.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    address = json['address'];
    image = json['image'];
    description = json['description'];
    bookmark = json['bookmark'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['address'] = this.address;
    data['image'] = this.image;
    data['description'] = this.description;
    data['bookmark'] = this.bookmark;
    data['id'] = this.id;
    return data;
  }
}
